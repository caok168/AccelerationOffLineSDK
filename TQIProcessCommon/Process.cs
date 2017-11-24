using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using TQIProcessCommon.Model;

namespace TQIProcessCommon
{
    public class Process
    {
        [DispId(1)]

        public string Test()
        {
            Response resultInfo = new Response();
            try
            {
                TQIProcess.Process process = new TQIProcess.Process();
                string path=@"E:\test\test.csv";
                List<TQIProcess.Model.TQIClass> list = new List<TQIProcess.Model.TQIClass>();
                list.Add(new TQIProcess.Model.TQIClass { iKM = 2, zgd = 1, ygd = 1, zgx = 1, ygx = 2, gj = 3, sp = 3, sjk = 3 });
                process.ExportExcel(path, list);

                resultInfo.flag = 1;
                resultInfo.msg = "Success";
                resultInfo.data = "";
            }
            catch (Exception ex)
            {
                resultInfo.flag = 0;
                resultInfo.msg = ex.Message;
            }

            return JsonConvert.SerializeObject(resultInfo);
        }

        [DispId(2)]
        public string CalcTqi(string json)
        {
            Response resultInfo = new Response();
            try
            {
                TqiRequest request = JsonConvert.DeserializeObject<TqiRequest>(json);
                TQIProcess.Process process = new TQIProcess.Process();



                process.GetResult(request.path, request.mileUnitValue,request.startMile,request.endMile, request.mileIdfFilePath, request.invalidIdfFilePath, request.exportFilePath);


                resultInfo.flag = 1;
                resultInfo.msg = "Success";
                resultInfo.data = request.exportFilePath;
            }
            catch (Exception ex)
            {
                resultInfo.flag = 0;
                resultInfo.msg = ex.Message;
            }

            return JsonConvert.SerializeObject(resultInfo);
        }
    }
}
