using AccelerateNew;
using MathWorks.MATLAB.NET.Arrays;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

//功率谱
namespace PowerSpectrumProcess
{

    public class Process
    {

        CitFileProcess.CitFileHelper citHelper = new CitFileProcess.CitFileHelper();

        public List<PowerSpectrum> GetResult(string filePath, string channelName,double kmStart,double kmEnd, double Nlen, double dt)
        {

            long startPos = 0;
            long endPos = 0;
            long pos1 = citHelper.GetCurrentPosition(filePath, Convert.ToSingle(kmStart) * 1000);
            long pos2 = citHelper.GetCurrentPosition(filePath, Convert.ToSingle(kmEnd) * 1000);
            if (pos1 > pos2)
            {
                startPos = pos2;
                endPos = pos1;
            }
            else
            {
                startPos = pos1;
                endPos = pos2;
            }

            double[] d_tt = citHelper.GetMilesData(filePath, startPos, endPos);

            int channelId = citHelper.GetChannelId(channelName, filePath);

            double[] d_wx = citHelper.GetSingleChannelData(filePath, channelId, startPos, endPos);

            #region 注释

            //int indexStart = 0;
            //int indexEnd = d_tt.Length - 1;

            //if (d_tt[0] < d_tt[d_tt.Length - 1])
            //{
            //    //增里程
            //    for (int i = 0; i < d_tt.Length; i++)
            //    {
            //        if (d_tt[i] >= kmStart)
            //        {
            //            indexStart = i;
            //            break;
            //        }
            //    }
            //    for (int i = 0; i < d_tt.Length; i++)
            //    {
            //        if (d_tt[i] >= kmEnd)
            //        {
            //            indexEnd = i;
            //            break;
            //        }
            //    }

            //}
            //else
            //{
            //    //减里程
            //    for (int i = 0; i < d_tt.Length; i++)
            //    {
            //        if (d_tt[i] <= kmStart)
            //        {
            //            indexStart = i;
            //            break;
            //        }
            //    }
            //    for (int i = 0; i < d_tt.Length; i++)
            //    {
            //        if (d_tt[i] <= kmEnd)
            //        {
            //            indexEnd = i;
            //            break;
            //        }
            //    }
            //}
            //int len = indexEnd - indexStart + 1;
            //double[] tt_new = new double[len];
            //double[] wx_new = new double[len];

            //Array.Copy(d_tt, indexStart, tt_new, 0, len);
            //Array.Copy(d_wx, indexStart, wx_new, 0, len);

            #endregion

            var list = Sub_Fourier_analysis(channelName, d_tt, d_wx, Nlen, dt);

            return list;
        }


        /// <summary>
        /// 计算功率谱
        /// </summary>
        /// <param name="channelName">通道名</param>
        /// <param name="tt">里程信号</param>
        /// <param name="wx">加速度信号：车体或是构架</param>
        /// <param name="Nlen">傅立叶变换窗长，一般取 2的倍数，如 1024；</param>
        /// <param name="dt">时间步长：3/1000；</param>
        /// <returns></returns>
        public List<PowerSpectrum> Sub_Fourier_analysis(string channelName, double[] tt, double[] wx, double Nlen, double dt)
        {
            AccelerateNewClass accelerationCls = new AccelerateNewClass();

            //List<String> dataStrList = new List<String>();

            List<PowerSpectrum> dataList = new List<PowerSpectrum>();

            double[] retVal = new double[2];

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

                    MWNumericArray d_Nlen = new MWNumericArray(Nlen);
                    MWNumericArray d_dt = new MWNumericArray(dt);

                    //调用算法
                    MWNumericArray resultArrayAB = (MWNumericArray)accelerationCls.sub_Fourier_analysis(d_tt, d_wx, d_Nlen, d_dt);
                    double[,] tmpArray = (double[,])resultArrayAB.ToArray();

                    for (int j = 0; j < tmpArray.GetLength(0); j++)
                    {
                        ////tmpArray[j, 0] = tmp_tt[(long)(tmpArray[j, 0])];
                        ////tmpArray[j, 1] = tmp_tt[(long)(tmpArray[j, 1])];

                        ////retValList.Add(Math.Round(tmpArray[0, j], 4));

                        ////tmpArray[j, 0] = tmp_tt[(long)(tmpArray[j, 0])];
                        ////tmpArray[j, 1] = tmp_tt[(long)(tmpArray[j, 1])];
                        //dataStr = String.Format("{0},{1},{2}", channelName, tmpArray[j, 0], tmpArray[j, 1]);
                        //dataStrList.Add(dataStr);

                        PowerSpectrum power = new PowerSpectrum();
                        power.ChannelName = channelName;
                        power.Frequency = tmpArray[j, 0];
                        power.PeakValue = tmpArray[j, 1];

                        dataList.Add(power);
                    }
                }
            }
            catch (System.Exception ex)
            {
                throw new Exception(ex.Message);
            }


            return dataList;
        }

    }
}
