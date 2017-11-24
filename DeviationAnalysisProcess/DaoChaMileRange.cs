using NPOI.HSSF.UserModel;
using NPOI.SS.UserModel;
using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.IO;
using System.Linq;
using System.Text;

namespace DeviationAnalysisProcess
{
    class DaoChaMileRange
    {
         //liyang: linename 就是一个大excel表中的一个 sheet的名字。
        public DaoChaMileRange(String xlsfilename, String linename)
        {
            Valid = false;
            //mLineName = "AJHX"; 
            mLineName = linename;
            // liyang: 读取xls表中tab为linename的表：
            // liyang: 注意加 HDR=NO，否则第0行会被当成表头而不读取。
            string connstr = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + xlsfilename + ";" + "Extended Properties=\"Excel 8.0; HDR=NO;IMEX=1;\"";
            connstr = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + xlsfilename + ";" + "Extended Properties=\"Excel 8.0; Persist Security Info=False;\"";


            string sql = "SELECT * FROM [" + mLineName + "$]";
            OleDbCommand sqlcom;
            using (OleDbConnection sqlconn = new OleDbConnection(connstr))
            {
                sqlcom = new OleDbCommand(sql, sqlconn);
                sqlconn.Open();
                try
                {
                    OleDbDataReader sdr = sqlcom.ExecuteReader();
                    while (sdr.Read())
                    {
                        // liyang: 只关心 1，2，3列
                        string from = sdr.GetValue(1).ToString();
                        string to = sdr.GetValue(2).ToString();
                        string what = sdr.GetValue(3).ToString();
                        // liyang: 3-道岔  2-曲线   1-直线
                        if ((what.Length != 0) && (what.Equals("3")) && (from.Length != 0) && (to.Length != 0))
                        {
                            AddRange(float.Parse(from), float.Parse(to));
                        }
                    }
                    sdr.Close();
                    sdr.Dispose();    // ??   

                    Valid = true;
                }
                catch (OleDbException)
                {
                    string s = "数据获取失败：\n" + xlsfilename + " 中没有 " + "\"" + linename + "\"" + " 标签页 ！";
                    throw new Exception(s);
                }
                finally
                {
                    sqlcom.Dispose(); // ??
                    sqlconn.Close();
                }
            }
        }


        //public DaoChaMileRange(String xlsfilename, String linename)
        //{
        //    Valid = false;
        //    mLineName = linename;

        //    using (FileStream stream = System.IO.File.OpenRead(xlsfilename))
        //    {
        //        HSSFWorkbook workbook = new HSSFWorkbook(stream);
        //        ISheet sheet = workbook.GetSheet(mLineName);

        //        if (sheet == null)
        //        {
        //            string s = "数据获取失败：\n" + xlsfilename + " 中没有 " + "\"" + linename + "\"" + " 标签页 ！";
        //            throw new Exception(s);
        //        }

        //        IRow headerRow = sheet.GetRow(1);
        //        int cellCount = headerRow.LastCellNum;

        //        for (int i = (sheet.FirstRowNum + 1); i < sheet.LastRowNum; i++)
        //        {
        //            IRow row = sheet.GetRow(i);

        //            string from = row.GetCell(1).ToString();
        //            string to = row.GetCell(2).ToString();
        //            string what = row.GetCell(3).ToString();

        //            // liyang: 3-道岔  2-曲线   1-直线
        //            if (!String.IsNullOrEmpty(from) && !String.IsNullOrEmpty(to) && !String.IsNullOrEmpty(what))
        //            {
        //                if ((what.Length != 0) && (what.Equals("3")) && (from.Length != 0) && (to.Length != 0))
        //                {
        //                    AddRange(float.Parse(from), float.Parse(to));
        //                }
        //            }
        //        }

        //        Valid = true;

        //        stream.Close();
        //        workbook = null;
        //        sheet = null;
        //    }
        //}


        private void AddRange(float from, float to)
        {
            Pair p = new Pair(from, to);
            mRanges.Add(p);
        }
        public bool IsDaoChao(float mile)
        {
            foreach (Pair p in mRanges)
            {
                if (p.Contain(mile))
                    return true;
            }
            return false;
        }
        private List<Pair> mRanges = new List<Pair>();
        String mLineName = null;


        public bool Valid { get; set; }
    }
}
