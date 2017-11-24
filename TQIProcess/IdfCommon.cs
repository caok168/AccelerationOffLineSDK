using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Text;
using TQIProcess.Model;

namespace TQIProcess
{
    public class IdfCommon
    {

        /// <summary>
        /// 获取线路代码和检测时间
        /// </summary>
        /// <param name="sIICFileName"></param>
        /// <param name="subCode"></param>
        /// <param name="runDate"></param>
        public void GetSubCodeAndRunDate(string sIICFileName,out string subCode,out DateTime runDate)
        {
            subCode = "";
            runDate = DateTime.Now;
            try
            {
                using (OleDbConnection sqlconn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + sIICFileName + ";Persist Security Info=True"))
                {
                    string sqlCreate = "select DISTINCT SubCode,RunDate from tqi";
                    OleDbCommand sqlcom = new OleDbCommand(sqlCreate, sqlconn);
                    sqlconn.Open();
                    OleDbDataReader oleDBdr = sqlcom.ExecuteReader();

                    if (oleDBdr.Read())
                    {
                        subCode = oleDBdr.GetValue(0).ToString();
                        runDate = DateTime.Parse(oleDBdr.GetValue(1).ToString());
                    }
                    oleDBdr.Close();
                    sqlconn.Close();
                }
            }
            catch(Exception ex)
            {
                throw new Exception(ex.ToString());
            }
        }

        /// <summary>
        /// 获取TQI里程
        /// </summary>
        /// <param name="sIICFileName"></param>
        /// <param name="iStartKM"></param>
        /// <param name="iEndKM"></param>
        public void GetTQIMiles(string sIICFileName, out int iStartKM, out int iEndKM)
        {
            iStartKM = 0;
            iEndKM = 0;

            try
            {
                using (OleDbConnection sqlconn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + sIICFileName + ";Persist Security Info=True"))
                {
                    string sqlCreate = "select min(FromPost),max(FromPost) from tqi";
                    OleDbCommand sqlcom = new OleDbCommand(sqlCreate, sqlconn);
                    sqlconn.Open();
                    OleDbDataReader oleDBdr = sqlcom.ExecuteReader();
                    if (oleDBdr.Read())
                    {
                        iStartKM = int.Parse(oleDBdr.GetValue(0).ToString());
                        iEndKM = int.Parse(oleDBdr.GetValue(1).ToString());
                    }

                    oleDBdr.Close();
                    sqlconn.Close();
                }
            }
            catch(Exception ex)
            {
                throw new Exception(ex.ToString());
            }
        }


        /// <summary>
        ///  idf数据库操作：查询--IndexSta表格
        /// </summary>
        /// <param name="sFile">idf全路径文件名</param>
        /// <returns>修正索引信息</returns>
        public List<IndexStaClass> GetDataIndexInfo(string sFile)
        {
            List<IndexStaClass> listIC = new List<IndexStaClass>();

            try
            {

                using (OleDbConnection sqlconn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + sFile + ";Persist Security Info=False"))
                {
                    OleDbCommand sqlcom = new OleDbCommand("select * from IndexSta order by id", sqlconn);
                    sqlconn.Open();
                    OleDbDataReader sqloledr = sqlcom.ExecuteReader();
                    while (sqloledr.Read())
                    {
                        IndexStaClass ic = new IndexStaClass();
                        ic.iID = (int)sqloledr.GetInt32(0);
                        ic.iIndexID = (int)sqloledr.GetInt32(1);
                        ic.lStartPoint = long.Parse(sqloledr.GetString(2));
                        ic.lStartMeter = sqloledr.GetString(3);
                        ic.lEndPoint = long.Parse(sqloledr.GetString(4));
                        ic.LEndMeter = sqloledr.GetString(5);
                        ic.lContainsPoint = long.Parse(sqloledr.GetString(6));
                        ic.lContainsMeter = sqloledr.GetString(7);
                        ic.sType = sqloledr.GetString(8);

                        listIC.Add(ic);
                    }
                    sqlconn.Close();
                }
            }
            catch
            {

            }
            return listIC;
        }

        /// <summary>
        /// 查询无效数据
        /// </summary>
        /// <param name="sFilePath"></param>
        /// <returns></returns>
        public List<InvalidDataClass> InvalidDataList(string sFilePath)
        {
            List<InvalidDataClass> listIDC = new List<InvalidDataClass>();
            try
            {
                using (OleDbConnection sqlconn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + sFilePath + ";Persist Security Info=True"))
                {
                    string sSql = "select * from InvalidData order by clng(StartPoint)";
                    OleDbCommand sqlcom = new OleDbCommand(sSql, sqlconn);
                    sqlconn.Open();
                    OleDbDataReader oleDBr = sqlcom.ExecuteReader();
                    int columnNum = oleDBr.FieldCount;
                    while (oleDBr.Read())
                    {
                        InvalidDataClass idc = new InvalidDataClass();
                        idc.iId = int.Parse(oleDBr.GetValue(0).ToString());
                        idc.sStartPoint = oleDBr.GetValue(1).ToString();
                        idc.sEndPoint = oleDBr.GetValue(2).ToString();
                        idc.sStartMile = oleDBr.GetValue(3).ToString();
                        idc.sEndMile = oleDBr.GetValue(4).ToString();
                        idc.iType = int.Parse(oleDBr.GetValue(5).ToString());
                        idc.sMemoText = oleDBr.GetValue(6).ToString();
                        idc.iIsShow = int.Parse(oleDBr.GetValue(7).ToString());
                        if (columnNum == 9)
                        {
                            idc.ChannelType = oleDBr.GetValue(8).ToString();
                        }
                        else
                        {
                            idc.ChannelType = "";
                        }

                        listIDC.Add(idc);
                    }
                    oleDBr.Close();
                    sqlconn.Close();
                }
            }
            catch (Exception ex)
            {
                throw new Exception("无效区段读取异常:" + ex.Message);
            }
            return listIDC;
        }

        /// <summary>
        /// 插入TQI
        /// </summary>
        /// <param name="sIICFileName"></param>
        /// <param name="listTQI"></param>
        /// <param name="subCode"></param>
        /// <param name="runDate"></param>
        public void InsertIntoTQI(string sIICFileName, List<TQIClass> listTQI, string subCode, DateTime runDate)
        {
            try
            {

                using (OleDbConnection sqlconn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + sIICFileName + ";Persist Security Info=True"))
                {
                    string sqlCreate = "";
                    OleDbCommand sqlcom = new OleDbCommand(sqlCreate, sqlconn);
                    sqlconn.Open();
                    for (int i = 0; i < listTQI.Count; i++)
                    {
                        sqlcom.CommandText = "insert into fix_tqi " +
                            "values('" + subCode + "','" + runDate + "'," + listTQI[i].iKM.ToString()
                            + "," + listTQI[i].iMeter.ToString()
                            + "," + listTQI[i].zgd.ToString()
                            + "," + listTQI[i].ygd.ToString()
                            + "," + listTQI[i].zgx.ToString()
                            + "," + listTQI[i].ygx.ToString()
                            + "," + listTQI[i].gj.ToString()
                            + "," + listTQI[i].sp.ToString()
                            + "," + listTQI[i].sjk.ToString()
                            + "," + listTQI[i].GetTQISum().ToString()
                            + "," + listTQI[i].hj.ToString()
                            + "," + listTQI[i].cj.ToString()
                            + "," + listTQI[i].pjsd.ToString()
                            + "," + listTQI[i].iValid.ToString() + ")";
                        sqlcom.ExecuteNonQuery();
                    }
                    sqlconn.Close();
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.ToString());
            }
        }

        /// <summary>
        /// 删除不在范围内的TQI
        /// </summary>
        /// <param name="sIICFileName"></param>
        /// <param name="sKmInc"></param>
        /// <param name="iStartKM"></param>
        /// <param name="iEndKM"></param>
        public void DeleteOutRangeTQI(string sIICFileName, string sKmInc, int iStartKM, int iEndKM)
        {
            try
            {
                using (OleDbConnection sqlconn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + sIICFileName + ";Persist Security Info=True"))
                {
                    string sqlCreate = "";
                    if (sKmInc.Contains("增"))
                    {
                        sqlCreate = " FromPost<" + iStartKM.ToString() + " or FromPost>" + iEndKM.ToString();
                    }
                    else
                    {
                        sqlCreate = " FromPost>" + iStartKM.ToString() + " or FromPost<" + iEndKM.ToString();
                    }
                    OleDbCommand sqlcom = new OleDbCommand(sqlCreate, sqlconn);
                    sqlconn.Open();
                    sqlcom.CommandText = "delete from fix_tqi where " + sqlCreate;
                    sqlcom.ExecuteNonQuery();
                    sqlconn.Close();
                }
            }
            catch(Exception ex)
            {
                throw new Exception(ex.ToString());
            }
        }

        /// <summary>
        /// 重新计算TQI
        /// </summary>
        /// <param name="sIICFileName"></param>
        /// <param name="listIDC"></param>
        /// <param name="listIC"></param>
        /// <param name="gjtds"></param>
        /// <param name="sKmInc"></param>
        public void ReCalcTQI(string sIICFileName, List<InvalidDataClass> listIDC, List<IndexStaClass> listIC, int gjtds, string sKmInc)
        {
            try
            {
                using (OleDbConnection sqlconn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + sIICFileName + ";Persist Security Info=True"))
                {
                    string sqlCreate = "";
                    OleDbCommand sqlcom = new OleDbCommand(sqlCreate, sqlconn);
                    sqlconn.Open();
                    for (int iVar = 0; iVar < listIDC.Count; iVar++)
                    {
                        int iStartMeter = PointToMeter(listIC, long.Parse(listIDC[iVar].sStartPoint), gjtds, sKmInc);
                        int iEndMeter = PointToMeter(listIC, long.Parse(listIDC[iVar].sEndPoint), gjtds, sKmInc);
                        //根据点获取里程

                        if (sKmInc.Contains("增"))
                        {
                            sqlCreate = " (FromPost*1000+fromminor)>=" + (iStartMeter - 200).ToString() +
                                " and (FromPost*1000+fromminor)<=" + (iEndMeter).ToString();
                        }
                        else
                        {
                            sqlCreate = "  (FromPost*1000+fromminor)<=" + (iStartMeter).ToString() +
                                " and (FromPost*1000+fromminor)>=" + (iEndMeter - 200).ToString();   /*减里程时，iEndMeter是小里程*/
                        }
                        sqlcom.CommandText = "update fix_tqi set valid=0 where " + sqlCreate;
                        int tmp = sqlcom.ExecuteNonQuery();
                    }
                    sqlconn.Close();
                }
            }
            catch(Exception ex)
            {
                throw new Exception(ex.ToString());
            }
        }



















        /// <summary>
        /// 根据点返回索引文件里对应的里程信息
        /// </summary>
        /// <param name="listIC">索引信息</param>
        /// <param name="lPosition">点的位置</param>
        /// <param name="tds">文件通道书</param>
        /// <param name="sKmInc">增减里程标</param>
        /// <returns>索引里程：单位为米</returns>
        public int PointToMeter(List<IndexStaClass> listIC, long lPosition, int tds, string sKmInc)
        {
            int iMeter = 0;

            //处理里程
            for (int i = 0; i < listIC.Count; i++)
            {
                if (lPosition >= listIC[i].lStartPoint && lPosition < listIC[i].lEndPoint)
                {
                    int iCount = 1;
                    long lCurPos = lPosition - listIC[i].lStartPoint;
                    int iIndex = 0;
                    if (listIC[i].sType.Contains("长链"))
                    {
                        int iKM = 0;
                        double dCDLMeter = float.Parse(listIC[i].lContainsMeter) * 1000;
                        if (sKmInc.Equals("减"))
                        {
                            iKM = (int)float.Parse(listIC[i].LEndMeter);
                        }
                        else
                        {
                            iKM = (int)float.Parse(listIC[i].lStartMeter);
                        }
                        for (iIndex = 0; iIndex < iCount && (lPosition + iIndex * tds * 2) < listIC[i].lEndPoint; )
                        {
                            float f = (lCurPos / tds / 2 + iIndex) * ((float.Parse(listIC[i].lContainsMeter) * 1000 / listIC[i].lContainsPoint));
                            WaveMeter wm = new WaveMeter();
                            if (sKmInc.Equals("减"))
                            {
                                wm.Km = iKM;
                                wm.Meter = (float)(dCDLMeter - f);
                            }
                            else
                            {
                                wm.Km = iKM;
                                wm.Meter = (float)(dCDLMeter + f);
                            }
                            wm.lPosition = (lPosition + (iIndex * tds * 2));
                            iMeter = wm.GetMeter(1);
                            return iMeter;
                        }
                    }
                    else
                    {
                        double dMeter = float.Parse(listIC[i].lStartMeter) * 1000;
                        for (iIndex = 0; iIndex < iCount && (lPosition + iIndex * tds * 2) < listIC[i].lEndPoint; )
                        {
                            float f = (lCurPos / tds / 2 + iIndex) * ((float.Parse(listIC[i].lContainsMeter) * 1000 / listIC[i].lContainsPoint));
                            WaveMeter wm = new WaveMeter();
                            if (sKmInc.Equals("减"))
                            {
                                wm.Km = (int)((dMeter - f) / 1000);
                                wm.Meter = (float)((dMeter - f) % 1000);
                            }
                            else
                            {
                                wm.Km = (int)((dMeter + f) / 1000);
                                wm.Meter = (float)((dMeter + f) % 1000);
                            }
                            wm.lPosition = (lPosition + (iIndex * tds * 2));
                            iMeter = wm.GetMeter(1);
                            return iMeter;
                        }
                    }
                    break;

                }

            }
            return iMeter;
        }
    }
}
