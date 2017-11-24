using DeviationAnalysisProcess.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Linq;
using System.Text;

namespace DeviationAnalysisProcess
{
    /// <summary>
    /// 偏差分析
    /// </summary>
    public class Process
    {
        DaoChaMileRange daoChaMileRange = null;

        public string lineName = "";

        /// <summary>
        /// 生成csv结果
        /// </summary>
        /// <param name="idfFilePath"></param>
        /// <param name="peakValue1"></param>
        /// <param name="peakValue2"></param>
        /// <param name="importFile"></param>
        public string ExportResult(string idfFilePath, int peakValue1, int peakValue2, string importFile,string exportFile)
        {
            String csvFilePath = null;
            StringBuilder sbExport = new StringBuilder();
            String yes = "是";

            // liyang: 最终导出的csv中，增加是否道岔这一列。
            String head = "里程,速度,阀值,轨道冲击指数,50米区段大值,项目,是否道岔";
            sbExport.AppendLine(head);

            // liyang: GetList() 是取得idf文件中的所有的表的数据
            List<SegmentRmsItemClass> segmentRmsItemClsList = GetList(idfFilePath, peakValue1, peakValue2, importFile);

            if (segmentRmsItemClsList == null)
            {
                return "获取segmentRmsItemClsList为空";
            }

            segmentRmsItemClsList.Sort(CompareByKiloMeter);



            for (int i = 0; i < segmentRmsItemClsList.Count; i++)
            {
                string fazhi = peakValue1.ToString(); // 曲线或者直线超限阀值，默认为4

                if (segmentRmsItemClsList[i].isDaoCha.Equals(yes))
                    fazhi = peakValue2.ToString(); //道岔超限阀值,默认为6

                //sbExport.AppendFormat("{0},{1},{2},{3},{4},{5},{6}", segmentRmsItemClsList[i].kiloMeter,
                //                                                     segmentRmsItemClsList[i].speed,
                //                                                     fazhi,//textBoxPeakLine.Text, 
                //                                                     segmentRmsItemClsList[i].segmentRmsPeak,
                //                                                     segmentRmsItemClsList[i].segmentRms,
                //                                                     segmentRmsItemClsList[i].channelName,
                //                                                     segmentRmsItemClsList[i].isDaoCha);

                sbExport.AppendFormat("{0},{1},{2},{3},{4},{5},{6}", Math.Round(Convert.ToDouble(segmentRmsItemClsList[i].kiloMeter), 3),
                                                                     Math.Round(Convert.ToDouble( segmentRmsItemClsList[i].speed),1),
                                                                     fazhi,//textBoxPeakLine.Text, 
                                                                     Math.Round(Convert.ToDouble(segmentRmsItemClsList[i].segmentRmsPeak),1),
                                                                     Math.Round(Convert.ToDouble(segmentRmsItemClsList[i].segmentRms),2),
                                                                     segmentRmsItemClsList[i].channelName,
                                                                     segmentRmsItemClsList[i].isDaoCha);

                sbExport.AppendLine();
            }


            //String csvFileName = String.Format("{0}.csv", "轴箱加速度超限值");

            //string citDirectoryPath = idfFilePath.Substring(0, idfFilePath.LastIndexOf("\\") + 1);
            //csvFilePath = Path.Combine(citDirectoryPath, csvFileName);

            StreamWriter sw = new StreamWriter(exportFile, false, Encoding.Default);
            sw.Write(sbExport.ToString());
            sw.Close();

            return exportFile;

        }

        
        private List<SegmentRmsItemClass> GetList(string rmsIdfFile, int peakValue1, int peakValue2,string importFile)
        {
            List<SegmentRmsItemClass> tmp = new List<SegmentRmsItemClass>();

            List<String> tableNames = null;

            String condition = null;
            String strYes = "是";
            String strNo = "否";

            try
            {

                String[] tmpStr = rmsIdfFile.Split('.');

                tableNames = GetTableNames(rmsIdfFile);

                GetLineName(rmsIdfFile, tableNames[0]);

                tableNames.RemoveAt(0);

                this.daoChaMileRange = new DaoChaMileRange(importFile, this.lineName);

                foreach (String str in tableNames)
                {
                    //condition = String.Format(" where (valid = 1)", peakValue1.ToString());
                    condition = String.Format(" where (valid = \"1\")", peakValue1.ToString());
                    SegmentRmsClass srCls = GetTableValue(rmsIdfFile, str, condition);

                    for (int i = 0; i < srCls.segmentRmsItemClsList.Count; i++)
                    {
                        bool isDaoCha = false;
                        if (null != this.daoChaMileRange)
                        {// liyang: 加入是否道岔的判断，并置上。
                            isDaoCha = this.daoChaMileRange.IsDaoChao(srCls.segmentRmsItemClsList[i].kiloMeter);
                            srCls.segmentRmsItemClsList[i].isDaoCha = isDaoCha ? strYes : strNo;
                        }
                        else
                        {
                            srCls.segmentRmsItemClsList[i].isDaoCha = "未加载道岔位置表";
                        }

                        // liyang: 加入针对于道岔的峰值的判断。
                        //liyang:是道岔就按照道岔的超限值判断
                        if (isDaoCha)
                        {
                            if (srCls.segmentRmsItemClsList[i].segmentRmsPeak >= float.Parse(peakValue2.ToString()))
                                tmp.Add(srCls.segmentRmsItemClsList[i]);
                        }
                        else //liyang:不是道岔就按照直线曲线的超限值判断
                        {
                            if (srCls.segmentRmsItemClsList[i].segmentRmsPeak >= float.Parse(peakValue1.ToString()))
                                tmp.Add(srCls.segmentRmsItemClsList[i]);
                        }
                    }

                }
            }
            catch (System.Exception ex)
            {
                throw new Exception(ex.ToString());
            }

            return tmp;
        }

        

        private SegmentRmsClass GetTableValue(String idfFilePath, String tableName, String condition)
        {
            SegmentRmsClass srCls = new SegmentRmsClass();

            srCls.tableName = tableName;

            using (OleDbConnection sqlconn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + idfFilePath + ";Persist Security Info=True"))
            {

                String sSQL = "select Id,KiloMeter,Speed,Segment_RMS,Segment_RMS_Peak,valid from " + tableName + condition;
                OleDbCommand sqlcom = new OleDbCommand(sSQL, sqlconn);

                sqlconn.Open();
                OleDbDataReader sdr = sqlcom.ExecuteReader();

                while (sdr.Read())
                {
                    SegmentRmsItemClass segmentRmsItemCls = new SegmentRmsItemClass();

                    segmentRmsItemCls.id = (int.Parse(sdr.GetValue(0).ToString()));
                    segmentRmsItemCls.kiloMeter = (float.Parse(sdr.GetValue(1).ToString()));
                    segmentRmsItemCls.speed = (float.Parse(sdr.GetValue(2).ToString()));
                    segmentRmsItemCls.segmentRms = (float.Parse(sdr.GetValue(3).ToString()));
                    segmentRmsItemCls.segmentRmsPeak = (float.Parse(sdr.GetValue(4).ToString()));
                    //segmentRmsItemCls.valid = (int.Parse(sdr.GetValue(5).ToString()));
                    segmentRmsItemCls.valid = sdr.GetValue(5).ToString();
                    segmentRmsItemCls.channelName = tableName;

                    srCls.segmentRmsItemClsList.Add(segmentRmsItemCls);
                }
                sdr.Close();
                sqlconn.Close();
            }

            return srCls;
        }


        /// <summary>
        /// 获取idf文件中的所有表名
        /// </summary>
        /// <param name="idfFilePath"></param>
        /// <returns></returns>
        public List<String> GetTableNames(String idfFilePath)
        {
            List<String> ret = new List<String>();
            using (OleDbConnection sqlconn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + idfFilePath + ";Persist Security Info=True"))
            {
                sqlconn.Open();

                DataTable dt = sqlconn.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, new object[] { null, null, null, "TABLE" });

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    ret.Add(dt.Rows[i]["TABLE_NAME"].ToString());
                }

                sqlconn.Close();

            }

            return ret;
        }

        /// <summary>
        /// 获取线路名
        /// </summary>
        /// <param name="idfFilePath">idf文件路径</param>
        /// <param name="tableName">表明</param>
        private void GetLineName(String idfFilePath, String tableName)
        {
            using (OleDbConnection sqlconn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + idfFilePath + ";Persist Security Info=True"))
            {
                String sSQL = "select LineName from " + tableName;
                OleDbCommand sqlcom = new OleDbCommand(sSQL, sqlconn);
                sqlconn.Open();
                OleDbDataReader sdr = sqlcom.ExecuteReader();
                while (sdr.Read())
                {
                    this.lineName = sdr.GetValue(0).ToString();
                }
                sdr.Close();
                sqlconn.Close();
            }
        }

        /// <summary>
        /// 从大到小排序
        /// </summary>
        /// <param name="segment1">第一个</param>
        /// <param name="segment2">第二个</param>
        /// <returns></returns>
        public int CompareByKiloMeter(SegmentRmsItemClass segment1, SegmentRmsItemClass segment2)
        {
            if (segment1 == null)
            {
                if (segment2 == null)
                {
                    return 0;
                }

                return 1;
            }

            if (segment2 == null)
            {
                return -1;
            }

            int retval = segment1.kiloMeter.CompareTo(segment2.kiloMeter);
            return retval;
        }
    }
}
