using CitFileSDK;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using TQIProcess.Model;

namespace TQIProcess
{
    public partial class Process
    {
        CITFileProcess citProcess = new CITFileProcess();

        //获取文件信息
        FileInformation fileinfo = new FileInformation();

        // 通道定义相关操作类
        ChannelDefinitionList cdlist = new ChannelDefinitionList();
        List<ChannelDefinition> channelList = new List<ChannelDefinition>();

        List<TQIClass> tqilist = new List<TQIClass>();


        private void UnFixCalc(string citFilePath, int mileUnitValue,string exportFilePath, float startMile, float endMile)
        {
            /* 左高低_中波
             * 右高低_中波
             * 左轨向_中波
             * 右轨向_中波
             * 轨距
             * 水平
             * 三角坑
             * */
            string[] sTQIItem = new string[] { "L_Prof_SC", "R_Prof_SC", "L_Align_SC", 
                "R_Align_SC", "Gage", "Crosslevel", "Short_Twist", "LACC", "VACC","Speed"};
            int[] sTQIItemIndex = new int[sTQIItem.Length];

            channelList = citProcess.GetChannelDefinitionList(citFilePath);
            for (int i = 0; i < sTQIItem.Length; i++)
            {
                for (int j = 0; j < channelList.Count; j++)
                {
                    if (sTQIItem[i].Equals(channelList[j].sNameEn))
                    {
                        sTQIItemIndex[i] = j;
                        break;
                    }
                }
            }

            long startPos = 0;
            long endPos = 0;

            long[] positions = citProcess.GetPositons(citFilePath);
            startPos = positions[0];
            endPos = positions[1];

            if (startMile != 0)
            {
                startPos = citProcess.GetCurrentPositionByMilestone(citFilePath, startMile, true);
                if (startPos == -1)
                {
                    throw new Exception("未找到对应开始里程的位置");
                }
            }
            if (endMile != 0)
            {
                endPos = citProcess.GetCurrentPositionByMilestone(citFilePath, endMile, true);
                if (endPos == -1)
                {
                    throw new Exception("未找到对应结束里程的位置");
                }
            }
            long tempPos = 0;
            if (startPos > endPos)
            {
                tempPos = startPos;
                startPos = endPos;
                endPos = tempPos;
            }

            int positionCount = mileUnitValue * 4;
            long range = citProcess.GetSampleCountByRange(citFilePath, startPos, endPos);
            long divisor = range / positionCount;
            long residue = range % positionCount;

            long tempStartPos = startPos;
            long tempEndPos = 0;

            for (int i = 0; i < divisor; i++)
            {
                tempEndPos = citProcess.GetAppointEndPostion(citFilePath, tempStartPos, positionCount);
                GetChannelData(citFilePath, tempStartPos, tempEndPos, sTQIItemIndex);

                tempStartPos = tempEndPos;
            }

            ExportExcel(exportFilePath, tqilist);
        }



        public void GetChannelData(string citFilePath, long startPos, long endPos, int[] sTQIItemIndex)
        {
            List<double[]> datas = citProcess.GetAllChannelDataInRange(citFilePath, startPos, endPos);

            TQIClass tqi = new TQIClass();
            Milestone milestone = citProcess.GetAppointMilestone(citFilePath, startPos);
            tqi.iKM = Convert.ToInt32(milestone.mKm);
            tqi.iMeter = milestone.mMeter;
            tqi.zgd = GetTQIValue(datas[sTQIItemIndex[0]]);

            tqi.ygd = GetTQIValue(datas[sTQIItemIndex[1]]);
            tqi.zgx = GetTQIValue(datas[sTQIItemIndex[2]]);
            tqi.ygx = GetTQIValue(datas[sTQIItemIndex[3]]);
            tqi.gj = GetTQIValue(datas[sTQIItemIndex[4]]);
            tqi.sp = GetTQIValue(datas[sTQIItemIndex[5]]);
            tqi.sjk = GetTQIValue(datas[sTQIItemIndex[6]]);
            tqi.hj = GetTQIValue(datas[sTQIItemIndex[7]]);
            tqi.cj = GetTQIValue(datas[sTQIItemIndex[8]]);

            //tqi.pjsd=

            tqilist.Add(tqi);
        }

        /// <summary>
        /// 获取tqi计算结果值
        /// </summary>
        /// <param name="data"></param>
        /// <returns></returns>
        public double GetTQIValue(double[] data)
        {
            return Math.Round(CalcStardard(data), 2);
        }

    }
}
