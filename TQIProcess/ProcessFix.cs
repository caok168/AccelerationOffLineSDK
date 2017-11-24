using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using TQIProcess.Model;

namespace TQIProcess
{
    public partial class Process
    {
        CitFileProcess.CitFileHelper citHelper = new CitFileProcess.CitFileHelper();

        public void FixCalc(string citFilePath, int mileUnitValue, string idfFilePath, string invalidIdfFilePath,string exportFilePath)
        {
            var list = GetResult(citFilePath, mileUnitValue, idfFilePath, invalidIdfFilePath,exportFilePath);

            ExportExcel(exportFilePath, list);
        }


        public List<TQIClass> GetResult(string citFilePath, int mileUnitValue, string idfFilePath, string invalidIdfFilePath,string exportFilePath)
        {
            List<TQIClass> list = new List<TQIClass>();

            IdfCommon idfHelper = new IdfCommon();

            string[] sTQIItem = new string[] { "L_Prof_SC", "R_Prof_SC", "L_Align_SC", 
                "R_Align_SC", "Gage", "Crosslevel", "Short_Twist", "LACC", "VACC","Speed"};
            int[] sTQIItemIndex = new int[sTQIItem.Length];
            var header = citHelper.GetDataInfoHead(citFilePath);
            var channelList = citHelper.GetDataChannelInfoHead(citFilePath);
            float[] f = new float[header.iChannelNumber];

            for (int i = 0; i < channelList.Count; i++)
            {
                f[i] = channelList[i].fScale;
            }

            //给通道绑定序号
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

            string sKmInc = "增";

            //减里程
            if (header.iKmInc == 1)
            {
                sKmInc = "减";
            }
            else
            {
                sKmInc = "增";
            }

            List<IndexStaClass> listIC = idfHelper.GetDataIndexInfo(idfFilePath);

            list = CalcTQI(citFilePath, listIC, header.iChannelNumber, sKmInc, true, sTQIItemIndex, f, mileUnitValue);

            return list;
        }


        public List<TQIClass> CalcTQI(string sWaveFileName, List<IndexStaClass> listIC, int gjtds, string sKmInc, bool bEncrypt, int[] sTQIItemIndex, float[] f,int mileUnitValue)
        {
            #region 计算TQI
            /*
             * 修正后的里程是连续的里程。
             * tqi的计算必须以修正后的里程为依据，否则原始里程存在有跳变的地方。没法计算tqi。
             */
            FileStream fs = new FileStream(sWaveFileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
            BinaryReader br = new BinaryReader(fs);
            List<TQIClass> listTQI = new List<TQIClass>();
            //long lReturn = GetIndexMeterPositon(listIC, lStartPosition, mi, jvli, iChannelNumber);
            for (int i = 0; i < listIC.Count; i++)
            {
                List<TQIMileClass> listWM = new List<TQIMileClass>();
                double dStartMile = 0d;
                double dEndMile = 0d;
                dStartMile = double.Parse(listIC[i].lStartMeter);
                dEndMile = double.Parse(listIC[i].LEndMeter);


                int iKM = (int)float.Parse(listIC[i].lStartMeter);
                int iMeter = (int)(float.Parse(listIC[i].lStartMeter) * 1000) - (iKM * 1000);
                if (sKmInc.Equals("增"))
                {
                    while (true)
                    {
                        TQIMileClass wm = new TQIMileClass();
                        int iMod = iMeter % mileUnitValue;
                        //例如当起点为90.0，则应该把90.0归到0-200这一段  --ygx20151123
                        //if (iMod == 0)
                        //{
                        //    wm.iMeter = iMeter;
                        //} 
                        //else
                        //{
                        //    wm.iMeter = iMeter + (200 - iMod);
                        //}
                        wm.iMeter = iMeter + (mileUnitValue - iMod);

                        wm.iKM = iKM;
                        if (listIC[i].sType.Equals("正常"))
                        {
                            if (wm.iMeter == 1000)
                            {
                                wm.iMeter = 0;
                                wm.iKM = iKM + 1;
                            }
                        }
                        else
                        {

                        }
                        wm.lPostion = GetNewIndexMeterPositon(listIC, wm.iKM * 1000 + wm.iMeter, gjtds, sKmInc, 0);
                        iMeter = wm.iMeter;
                        iKM = wm.iKM;
                        if ((iKM + iMeter / 1000f) < dEndMile)
                        { listWM.Add(wm); }
                        else
                        {
                            break;
                        }
                    }
                }
                else//jian
                {
                    if (listIC[i].sType.Equals("长链"))
                    {
                        iMeter = (int)(float.Parse(listIC[i].lContainsMeter) * 1000);
                    }
                    while (true)
                    {
                        TQIMileClass wm = new TQIMileClass();
                        int iMod = iMeter % mileUnitValue;
                        wm.iMeter = iMeter - (iMod == 0 ? mileUnitValue : iMod);
                        wm.iKM = iKM;
                        if (listIC[i].sType.Equals("正常"))
                        {
                            if (wm.iMeter < 0)
                            {
                                wm.iMeter = 800;
                                wm.iKM = iKM - 1;
                            }
                        }
                        else
                        {

                        }
                        wm.lPostion = GetNewIndexMeterPositon(listIC, wm.iKM * 1000 + wm.iMeter, gjtds, sKmInc, 0);
                        iMeter = wm.iMeter;
                        iKM = wm.iKM;
                        if (wm.iMeter == 0 && listIC[i].sType.Equals("正常"))
                        {
                            wm.iMeter = 800;
                            wm.iKM -= 1;
                        }
                        else
                        {
                            wm.iMeter -= mileUnitValue;
                        }
                        if ((iKM + iMeter / 1000f) > dEndMile)
                        { listWM.Add(wm); }
                        else
                        {
                            break;
                        }
                    }
                }
                //
                int iRate = (int)(mileUnitValue / (float.Parse(listIC[i].lContainsMeter) * 1000 / listIC[i].lContainsPoint));
                for (int k = 0; k < listWM.Count; k++)
                {
                    if (listWM[k].lPostion == -1)
                    {
                        continue;
                    }
                    br.BaseStream.Position = listWM[k].lPostion;
                    double[][] fArray = new double[10][];
                    for (int j = 0; j < 10; j++)
                    {
                        fArray[j] = new double[iRate];
                    }
                    for (int l = 0; l < iRate; l++)
                    {
                        if (br.BaseStream.Position < br.BaseStream.Length)
                        {
                            byte[] b = br.ReadBytes(gjtds * 2);
                            if (bEncrypt)
                            {
                                b = ByteXORByte(b);
                            }
                            //处理数据通道
                            for (int n = 0; n < sTQIItemIndex.Length; n++)
                            {
                                float fValue = float.Parse((BitConverter.ToInt16(b, sTQIItemIndex[n] * 2)).ToString()) / f[sTQIItemIndex[n]];
                                //sb.Append("," + fValue.ToString("f2"));
                                fArray[n][l] = fValue;
                            }
                        }
                    }
                    //计算
                    TQIClass tqic = new TQIClass();
                    tqic.zgd = Math.Round(CalcStardard(fArray[0]), 2);
                    tqic.ygd = Math.Round(CalcStardard(fArray[1]), 2);
                    tqic.zgx = Math.Round(CalcStardard(fArray[2]), 2);
                    tqic.ygx = Math.Round(CalcStardard(fArray[3]), 2);
                    tqic.gj = Math.Round(CalcStardard(fArray[4]), 2);
                    tqic.sp = Math.Round(CalcStardard(fArray[5]), 2);
                    tqic.sjk = Math.Round(CalcStardard(fArray[6]), 2);
                    tqic.hj = Math.Round(CalcStardard(fArray[7]), 2);
                    tqic.cj = Math.Round(CalcStardard(fArray[8]), 2);
                    tqic.pjsd = CalcAvgSpeed(fArray[9]);
                    tqic.iKM = listWM[k].iKM;
                    tqic.iMeter = listWM[k].iMeter;
                    listTQI.Add(tqic);
                }
            }
            br.Close();
            fs.Close();


            return listTQI;
            #endregion
        }

    }
}
