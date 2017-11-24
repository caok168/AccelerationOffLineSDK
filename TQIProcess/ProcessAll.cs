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
        public void GetResult(string citFilePath,int mileUnitValue,float startMile,float endMile, string mileIdfFilePath, string invalidIdfFilePath, string exportFilePath)
        {
            if (mileUnitValue == 0)
            {
                mileUnitValue = 200;
            }

            if (String.IsNullOrEmpty(mileIdfFilePath) && String.IsNullOrEmpty(invalidIdfFilePath))
            {
                UnFixCalc(citFilePath, mileUnitValue, exportFilePath, startMile, endMile);
            }
            else
            {
                FixCalc(citFilePath, mileUnitValue, mileIdfFilePath, invalidIdfFilePath, exportFilePath);
            }
        }


        public string ExportExcel(string exportPath, List<TQIClass> tqilist)
        {
            StreamWriter sw = new StreamWriter(exportPath, false, Encoding.Default);

            StringBuilder sbtmp = new StringBuilder();

            sbtmp.Append("序号,");
            sbtmp.Append("里程,");
            sbtmp.Append("TQI,");
            sbtmp.Append("左高低_中波,");
            sbtmp.Append("右高低_中波,");
            sbtmp.Append("左轨向_中波,");
            sbtmp.Append("右轨向_中波,");
            sbtmp.Append("轨距,");
            sbtmp.Append("水平,");
            sbtmp.Append("三角坑");

            sw.WriteLine(sbtmp.ToString());

            for (int i = 0; i < tqilist.Count; i++)
            {
                sw.Write(i + 1);
                sw.Write(",");
                sw.Write(tqilist[i].iKM + tqilist[i].iMeter / 1000);
                sw.Write(",");
                sw.Write(tqilist[i].GetTQISum().ToString());
                sw.Write(",");
                sw.Write(tqilist[i].zgd.ToString());
                sw.Write(",");
                sw.Write(tqilist[i].ygd.ToString());
                sw.Write(",");
                sw.Write(tqilist[i].zgx.ToString());
                sw.Write(",");
                sw.Write(tqilist[i].ygx.ToString());
                sw.Write(",");
                sw.Write(tqilist[i].gj.ToString());
                sw.Write(",");
                sw.Write(tqilist[i].sp.ToString());
                sw.Write(",");
                sw.Write(tqilist[i].sjk.ToString());
                sw.Write("\n");
            }

            sw.Close();

            return exportPath;
        }


        /// <summary>
        /// 标准差计算
        /// </summary>
        /// <param name="dItems"></param>
        /// <returns></returns>
        public double CalcStardard(double[] dItems)
        {
            double dResult = 0;
            double dSum = 0;
            for (int i = 0; i < dItems.Length; i++)
            {
                dSum += dItems[i];
            }
            dSum /= dItems.Length;
            double dAve = 0;
            for (int i = 0; i < dItems.Length; i++)
            {
                dAve += Math.Pow((dItems[i] - dSum), 2);
            }
            dAve /= dItems.Length;
            dResult = Math.Pow(dAve, 0.5);

            return dResult;
        }


        public int CalcAvgSpeed(double[] dSpeed)
        {
            int iSpeed = 0;
            double dSum = 0.0;
            for (int i = 0; i < dSpeed.Length; i++)
            {
                dSum += dSpeed[i];
            }
            iSpeed = (int)(dSum / dSpeed.Length);
            return iSpeed;
        }
    }
}
