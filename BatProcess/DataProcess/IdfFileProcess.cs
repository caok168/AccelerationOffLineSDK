using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Text;

namespace BatProcess.DataProcess
{
    public class IdfFileProcess
    {
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
    }
}
