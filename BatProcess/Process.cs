using BatProcess.DataProcess;
using BatProcess.Model;
using InGraph.DataProcessClass;
using MathWorks.MATLAB.NET.Arrays;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace BatProcess
{
    public class Process
    {
        CitProcessClass citProcessCls = null;

        IdfFileProcess idfHelper = null;

        public Process()
        {
            citProcessCls = new CitProcessClass();

            idfHelper = new IdfFileProcess();
        }

        /// <summary>
        /// 有效值计算
        /// </summary>
        /// <param name="citFilePath">Cit文件路径</param>
        /// <param name="fs">采样频率</param>
        /// <param name="upperFreq">上限频率</param>
        /// <param name="lowerFreq">下限频率</param>
        /// <param name="windowLen">有效窗长</param>
        /// <param name="upperChannelFreq">通带上限</param>
        /// Fr_Vt   构架垂
        /// Fr_Lt   构架横
        /// CB_Lt   车体横
        /// CB_Vt   车体垂
        /// CB_Lg   车体纵
        /// <param name="lowerChannelFreq">通道下限</param>
        /// <param name="isPre">是否预处理</param>
        public void CalcRms(string citFilePath, int fs, int upperFreq, int lowerFreq, int windowLen, List<double> upperChannelFreq, List<double> lowerChannelFreq, bool isPre)
        {
            List<string> tmpSectionFilePathList = citProcessCls.CreateAllSectionFileNew(citFilePath, fs, upperFreq, lowerFreq, windowLen, upperChannelFreq, lowerChannelFreq);
        }

        public List<string> CalcRms(string citFilePath, int fs, int upperFreq, int lowerFreq, int windowLen, List<double> upperChannelFreq, List<double> lowerChannelFreq, string exportPath)
        {
            List<string> tmpSectionFilePathList = citProcessCls.CreateAllSectionFileNew(citFilePath, fs, upperFreq, lowerFreq, windowLen, upperChannelFreq, lowerChannelFreq,exportPath);

            return tmpSectionFilePathList;
        }


        /// <summary>
        /// 区段大值
        /// </summary>
        /// <param name="citFilePath"></param>
        /// <param name="segmentLen"></param>
        public void CalcMax(string citFilePath, int segmentLen)
        {
            List<string> fileList = new List<string> { citFilePath };
            citProcessCls.CalcSegmentRMS(fileList, segmentLen, "");
        }

        public string CalcMax(string citFilePath, int segmentLen,string exportPath,bool isCreateIdf)
        {
            List<string> fileList = new List<string> { citFilePath };
            string path = "";
            if (isCreateIdf)
            {
                path = citProcessCls.CalcSegmentRMS(fileList, segmentLen, exportPath);
            }
            else 
            {
                path = citProcessCls.CalcSegmentRMS_NoCreateIdf(fileList, segmentLen, exportPath);
            }
            
            return path;
        }

        public List<AvgModel> CalcAvg(string idfFilePath)
        {
            List<string> idfFilePathList = new List<string> { idfFilePath };

            double avgRms = 0;
            double avgSpd = 0;

            List<AvgModel> list = new List<AvgModel>();

            CalAvgRms(idfFilePathList, "AB_Lt", out avgRms, out avgSpd);  //左轴横

            AvgModel model1 = new AvgModel();
            model1.ChannelNameEn = "AB_Lt";
            model1.ChannelNameCn = "左轴横";
            model1.AvgRms = avgRms;
            model1.AvgSpd = avgSpd;
            list.Add(model1);

            CalAvgRms(idfFilePathList, "AB_Vt_L", out avgRms, out avgSpd);//左轴垂

            AvgModel model2 = new AvgModel();
            model2.ChannelNameEn = "AB_Vt_L";
            model2.ChannelNameCn = "左轴垂";
            model2.AvgRms = avgRms;
            model2.AvgSpd = avgSpd;
            list.Add(model2);

            CalAvgRms(idfFilePathList, "AB_Vt_R", out avgRms, out avgSpd);//右轴垂

            AvgModel model3 = new AvgModel();
            model3.ChannelNameEn = "AB_Vt_R";
            model3.ChannelNameCn = "右轴垂";
            model3.AvgRms = avgRms;
            model3.AvgSpd = avgSpd;
            list.Add(model3);

            return list;
        }

        /// <summary>
        /// 计算平均值
        /// </summary>
        /// <param name="rmsList"></param>
        /// <param name="spdList"></param>
        /// <returns></returns>
        public double[] CalcAvg(List<double> rmsList, List<double> spdList)
        {
            double avg_rms = 0;
            double avg_spd = 0;

            citProcessCls.sub_calculate_mean_rms(spdList.ToArray(), rmsList.ToArray(), out avg_rms, out avg_spd);

            double[] result = new double[2];
            result[0] = avg_rms;
            result[1] = avg_spd;

            return result;
        }

        /// <summary>
        /// 轨道冲击指数计算
        /// </summary>
        /// <param name="rmsList"></param>
        /// <param name="seg_rms"></param>
        /// <returns></returns>
        public double[] CalcPeak(List<double> rmsList, double seg_rms)
        {
            double[] peakArray = citProcessCls.sub_calculate_peak_factor(rmsList.ToArray(), seg_rms);

            return peakArray;
        }



        public List<AvgModel> BatProcessAll(string citFilePath, int fs, int upperFreq, int lowerFreq, int windowLen, List<double> upperChannelFreq, List<double> lowerChannelFreq, int segmentLen,string idfOutPath, out string filePath)
        {
            List<string> tmpSectionFilePathList = citProcessCls.CreateAllSectionFileNew(citFilePath, fs, upperFreq, lowerFreq, windowLen, upperChannelFreq, lowerChannelFreq);

            string idfFilePath = citProcessCls.CalcSegmentRMS(tmpSectionFilePathList, segmentLen, idfOutPath);

            filePath = idfFilePath;

            List<string> idfFilePathList = new List<string> { idfFilePath };

            double avgRms = 0;
            double avgSpd = 0;

            List<AvgModel> list = new List<AvgModel>();

            CalAvgRms(idfFilePathList, "AB_Lt", out avgRms, out avgSpd);  //左轴横

            AvgModel model1 = new AvgModel();
            model1.ChannelNameEn = "AB_Lt";
            model1.ChannelNameCn = "左轴横";
            model1.AvgRms = avgRms;
            model1.AvgSpd = avgSpd;
            list.Add(model1);

            CalAvgRms(idfFilePathList, "AB_Vt_L", out avgRms, out avgSpd);//左轴垂

            AvgModel model2 = new AvgModel();
            model2.ChannelNameEn = "AB_Vt_L";
            model2.ChannelNameCn = "左轴垂";
            model2.AvgRms = avgRms;
            model2.AvgSpd = avgSpd;
            list.Add(model2);

            CalAvgRms(idfFilePathList, "AB_Vt_R", out avgRms, out avgSpd);//右轴垂

            AvgModel model3 = new AvgModel();
            model3.ChannelNameEn = "AB_Vt_R";
            model3.ChannelNameCn = "右轴垂";
            model3.AvgRms = avgRms;
            model3.AvgSpd = avgSpd;
            list.Add(model3);

            return list;
        }


        public void PeakProcess(string rmsIdfPath, double[] avgSegList)
        {
            List<string> rmsIdfPathList = new List<string> { rmsIdfPath };
            CalPeak(rmsIdfPathList, "AB_Lt", avgSegList[0]);
            CalPeak(rmsIdfPathList, "AB_Vt_L", avgSegList[1]);
            CalPeak(rmsIdfPathList, "AB_Vt_R", avgSegList[2]);
        }


        private void CalAvgRms(List<String> rmsIdfPaths, String channelName,out double avgRms,out double avgSpd)
        {
            double avg_rms = 0;
            double avg_spd = 0;
            List<double> rmsList = new List<double>();
            List<double> spdList = new List<double>();


            foreach (string rmsIdfPath in rmsIdfPaths)
            {
                List<double> rmsListTmp = new List<double>();
                List<double> spdListTmp = new List<double>();

                

                List<String> tableNames = idfHelper.GetTableNames(rmsIdfPath);

                //List<String> tableNames = new List<string>();
                //tableNames.Add("segmentRms_AB_Lt_L_RMS_11");
                //tableNames.Add("segmentRms_AB_Vt_L_RMS_11");
                //tableNames.Add("segmentRms_AB_Vt_R_RMS_11");
                //tableNames.Add("segmentRms_CB_Lg_L_11");
                //tableNames.Add("segmentRms_CB_Lt_L_11");
                //tableNames.Add("segmentRms_CB_Vt_L_11");
                //tableNames.Add("segmentRms_Fr_Lt_L_11");
                //tableNames.Add("segmentRms_Fr_Vt_L_11");

                String tableName = null;
                foreach (String tName in tableNames)
                {
                    if (tName.Contains(channelName))
                    {
                        tableName = tName;
                        break;
                    }
                }

                citProcessCls.ReadTableRms(rmsIdfPath, tableName, out rmsListTmp, out spdListTmp);

                rmsList.AddRange(rmsListTmp);
                spdList.AddRange(spdListTmp);
            }

            citProcessCls.sub_calculate_mean_rms(spdList.ToArray(), rmsList.ToArray(), out avg_rms, out avg_spd);

            avgRms = avg_rms;
            avgSpd = avg_spd;

        }


        private void CalPeak(List<String> rmsIdfPaths, String channelName, double seg_rms)
        {
            foreach (string rmsIdfPath in rmsIdfPaths)
            {
                List<double> rmsListTmp = new List<double>();
                List<double> spdListTmp = new List<double>();

                List<String> tableNames = idfHelper.GetTableNames(rmsIdfPath);
                String tableName = null;
                foreach (String tName in tableNames)
                {
                    if (tName.Contains(channelName))
                    {
                        tableName = tName;
                        break;
                    }
                }


                citProcessCls.ReadTableRms(rmsIdfPath, tableName, out rmsListTmp, out spdListTmp);

                double[] peakArray = citProcessCls.sub_calculate_peak_factor(rmsListTmp.ToArray(), seg_rms);

                citProcessCls.UpdatePeak(rmsIdfPath, tableName, peakArray);
            }
        }
    }
}
