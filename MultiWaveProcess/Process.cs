using AccelerateNew;
using CitFileProcess;
using MathWorks.MATLAB.NET.Arrays;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

//连续多波
namespace MultiWaveProcess
{
    /// <summary>
    /// 连续多波
    /// </summary>
    public class Process
    {

        AccelerateNewClass ac = new AccelerateNewClass();
        CitFileProcess.CitFileHelper citHelper = new CitFileProcess.CitFileHelper();

        public string citFilePath = "";


        public List<MultiWave> GetResult(string filePath,string channelName,double Fs,double Freq_L, double Freq_H, double thresh_multi_wave, double thresh_multi_peak)
        {
            List<MultiWave> listAll = new List<MultiWave>();

            citFilePath = filePath;

            double[] d_tt = null;
            double[] d_wx = null;

            int channelId = citHelper.GetChannelId(channelName, filePath);

            var header = citHelper.GetDataInfoHead(filePath);
            int byteneeds = header.iChannelNumber * 2 * 1000000;
            long startPos = citHelper.GetSamplePointStartOffset(header.iChannelNumber, 4);
            long citFileLength = citHelper.GetFileLength(filePath);

            int count = Convert.ToInt32((citFileLength - startPos) / byteneeds);
            for (int i = 0; i < count; i++)
            {
                long endPos = startPos + byteneeds;

                d_tt = citHelper.GetMilesData(filePath, startPos, endPos);

                d_wx = citHelper.GetSingleChannelData(filePath, channelId, startPos, endPos);

                double[] d_wx_filter = Sub_filter_by_fft_and_ifft(d_wx, d_tt, Fs, Freq_L, Freq_H);

                List<MultiWave> list = Sub_preprocessing_continous_multi_wave_on_acc(channelName, d_tt, d_wx_filter, thresh_multi_wave, thresh_multi_peak);

                listAll.AddRange(list);

                startPos = endPos + 1;
            }



            return listAll;
        }


        /// <summary>
        /// 对信号进行滤波：车体，架构采样后的滤波
        /// </summary>
        /// <param name="wx">原始信号：车体垂，车体横，架构垂，架构横</param>
        /// <param name="tt">里程</param>
        /// <param name="Fs">采样频率：2000/6</param>
        /// <param name="Freq_L">滤波下限频率</param>
        /// <param name="Freq_H">滤波上限频率</param>
        /// <returns>滤波后的信号</returns>
        public double[] Sub_filter_by_fft_and_ifft(double[] wx, double[] tt, double Fs, double Freq_L, double Freq_H)
        {
            double[] retVal = new double[wx.Length];

            List<double> retValList = new List<double>();

            try
            {
                int oneTimeLength = 1000000; //一次处理的点数

                for (int i = 0; i < tt.Length; i += oneTimeLength)
                {
                    int remain = 0;
                    int index = (i / oneTimeLength) * oneTimeLength;
                    remain = tt.Length - oneTimeLength * (i / oneTimeLength + 1);
                    int ThisTimeLength = remain > 0 ? oneTimeLength : (remain += oneTimeLength);
                    double[] tmp_tt = new double[ThisTimeLength];
                    double[] tmp_wx = new double[ThisTimeLength];


                    for (int j = 0; j < ThisTimeLength; j++)
                    {
                        tmp_tt[j] = tt[index + j];
                        tmp_wx[j] = wx[index + j];
                    }

                    MWNumericArray d_tt = new MWNumericArray(tmp_tt);
                    MWNumericArray d_wx = new MWNumericArray(tmp_wx);
                    MWNumericArray d_Fs = new MWNumericArray(Fs);
                    MWNumericArray d_Frep_L = new MWNumericArray(Freq_L);
                    MWNumericArray d_Frep_H = new MWNumericArray(Freq_H);

                    //调用算法
                    MWNumericArray resultArrayAB = (MWNumericArray)ac.sub_filter_by_fft_and_ifft(d_wx, d_tt, d_Fs, d_Frep_L, d_Frep_H);
                    double[,] tmpArray = (double[,])resultArrayAB.ToArray();

                    for (int j = 0; j < tmpArray.GetLength(1); j++)
                    {
                        //tmpArray[j, 0] = tmp_tt[(long)(tmpArray[j, 0])];
                        //tmpArray[j, 1] = tmp_tt[(long)(tmpArray[j, 1])];

                        retValList.Add(Math.Round(tmpArray[0, j], 4));
                    }
                }
            }
            catch (System.Exception ex)
            {
                throw new Exception(ex.Message);
            }

            return retValList.ToArray();
        }


        /// <summary>
        /// 计算连续多波指标，车体或是构架加速度
        /// </summary>
        /// <param name="channelName">中文通道名</param>
        /// <param name="tt">里程信息</param>
        /// <param name="wx">输入的加速度信号：构架或是车体</param>
        /// <param name="thresh_multi_wave">连续多波的个数，取位：车体垂-3，车体横-3，构架垂-3，构架横-6</param>
        /// <param name="thresh_multi_peak">连续多波峰值，车体垂-0.05，车体横-0.05，构架垂-0.25，构架横-0.8</param>
        /// <returns></returns>
        public List<MultiWave> Sub_preprocessing_continous_multi_wave_on_acc(string channelName, double[] tt, double[] wx, double thresh_multi_wave, double thresh_multi_peak)
        {
            
            //List<String> dataStrList = new List<String>();
            //String dataStr = null;

            List<MultiWave> dataList = new List<MultiWave>();

            try
            {
                int oneTimeLength = 1000000; //一次处理的点数

                for (int i = 0; i < tt.Length; i += oneTimeLength)
                {
                    int remain = 0;
                    int index = (i / oneTimeLength) * oneTimeLength;
                    remain = tt.Length - oneTimeLength * (i / oneTimeLength + 1);
                    int ThisTimeLength = remain > 0 ? oneTimeLength : (remain += oneTimeLength);
                    double[] tmp_tt = new double[ThisTimeLength];
                    double[] tmp_wx = new double[ThisTimeLength];
                    double[] tmp_wvelo = new double[ThisTimeLength];
                    double[] tmp_wx_gauge = new double[ThisTimeLength];

                    for (int j = 0; j < ThisTimeLength; j++)
                    {
                        tmp_tt[j] = tt[index + j];
                        tmp_wx[j] = wx[index + j];
                    }

                    MWNumericArray d_tt = new MWNumericArray(tmp_tt);
                    MWNumericArray d_wx = new MWNumericArray(tmp_wx);

                    MWNumericArray d_thresh_multi_wave = new MWNumericArray(thresh_multi_wave);
                    MWNumericArray d_thresh_multi_peak = new MWNumericArray(thresh_multi_peak);

                    //调用算法
                    MWNumericArray resultArrayAB = (MWNumericArray)ac.sub_preprocessing_continous_multi_wave_on_acc(d_tt, d_wx, d_thresh_multi_wave, d_thresh_multi_peak);
                    double[,] tmpArray = (double[,])resultArrayAB.ToArray();

                    for (int j = 0; j < tmpArray.GetLength(0); j++)
                    {
                        tmpArray[j, 0] = tmp_tt[(long)(tmpArray[j, 0])];
                        tmpArray[j, 1] = tmp_tt[(long)(tmpArray[j, 1])];
                        //dataStr = String.Format("{0},{1},{2},{3}", channelName, tmpArray[j, 0], tmpArray[j, 1], tmpArray[j, 2]);
                        //dataStrList.Add(dataStr);

                        MultiWave wave = new MultiWave();
                        wave.ChannelName = channelName;
                        wave.StartPos = (long)(tmpArray[j, 0]);
                        wave.EndPos = (long)(tmpArray[j, 1]);
                        wave.AbsMinValue = tmpArray[j, 2];

                        wave.StartMile = GetAppointMilestone(citFilePath, wave.StartPos);
                        wave.EndMile = GetAppointMilestone(citFilePath, wave.EndPos);


                        dataList.Add(wave);
                    }
                }
            }
            catch (System.Exception ex)
            {
                throw new Exception(ex.Message);
            }

            return dataList;
        }


        public double GetAppointMilestone(string citFile, long filePos)
        {
            //当前里程 【公里】
            double currentMilestone = 0;

            float mKm = 0;
            float mMeter = 0;

            DataHeadInfo fi = citHelper.GetDataInfoHead(citFile);

            FileStream fs = new FileStream(citFile, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
            BinaryReader br = new BinaryReader(fs, Encoding.Default);
            br.BaseStream.Position = citHelper.GetSamplePointStartOffset(fi.iChannelNumber, DataOffset.ExtraLength);



            int iChannelNumberSize = fi.iChannelNumber * 2;
            byte[] b = new byte[iChannelNumberSize];
            long iArray = (br.BaseStream.Length - br.BaseStream.Position) / iChannelNumberSize;

            List<DataChannelInfo> channelList = citHelper.GetDataChannelInfoHead(citFile);
            var kmChannel = channelList.Where(s => s.sID == 1).FirstOrDefault();
            var mChannel = channelList.Where(s => s.sID == 2).FirstOrDefault();

            //ChannelDefinitionList channelDefintions = new ChannelDefinitionList();
            //channelDefintions.channelDefinitionList = GetChannelDefinitionList(citFile);
            //ChannelDefinition kmChannel = channelDefintions.GetChannelByName("km", "公里");
            //ChannelDefinition mChannel = channelDefintions.GetChannelByName("m", "米");
            if (kmChannel == null)
            {
                throw new Exception("通道定义错误，找不到通道Km");
            }
            if (kmChannel == null)
            {
                throw new Exception("通道定义错误，找不到通道Meter");
            }

            if (br.BaseStream.Position <= filePos && br.BaseStream.Length > filePos)
            {
                br.BaseStream.Position = filePos;

                b = br.ReadBytes(iChannelNumberSize);
                if (Encryption.IsEncryption(fi.sDataVersion))
                {
                    b = Encryption.Translate(b);
                }
                short km = BitConverter.ToInt16(b, 0);
                short m = BitConverter.ToInt16(b, 2);

                

                mKm = km / kmChannel.fScale + kmChannel.fOffset;
                mMeter = m / mChannel.fScale + mChannel.fOffset;
            }
            else if (br.BaseStream.Length >= filePos)
            {
                br.BaseStream.Position = br.BaseStream.Length - iChannelNumberSize;

                b = br.ReadBytes(iChannelNumberSize);
                if (Encryption.IsEncryption(fi.sDataVersion))
                {
                    b = Encryption.Translate(b);
                }
                short km = BitConverter.ToInt16(b, 0);
                short m = BitConverter.ToInt16(b, 2);

                mKm = km / kmChannel.fScale + kmChannel.fOffset;
                mMeter = m / mChannel.fScale + mChannel.fOffset;
            }
            else if (br.BaseStream.Position < filePos)
            {
                b = br.ReadBytes(iChannelNumberSize);
                if (Encryption.IsEncryption(fi.sDataVersion))
                {
                    b = Encryption.Translate(b);
                }
                short km = BitConverter.ToInt16(b, 0);
                short m = BitConverter.ToInt16(b, 2);

                mKm = km / kmChannel.fScale + kmChannel.fOffset;
                mMeter = m / mChannel.fScale + mChannel.fOffset;
            }

            br.Close();
            fs.Close();

            currentMilestone = mKm + mMeter / 1000;

            return currentMilestone;
        }
    }
}
