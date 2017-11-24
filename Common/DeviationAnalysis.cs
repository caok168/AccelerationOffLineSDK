using AccelerationOffLineCommon.Model;
using Newtonsoft.Json;
using System;
using System.Runtime.InteropServices;

namespace AccelerationOffLineCommon
{
    /// <summary>
    /// 偏差分析
    /// </summary>
    public class DeviationAnalysis
    {
        DeviationAnalysisProcess.Process process = new DeviationAnalysisProcess.Process();

        [DispId(31)]
        public string Test()
        {
            Response resultInfo = new Response();
            try
            {
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

        [DispId(32)]
        public string Process(string json)
        {
            Response resultInfo = new Response();
            try
            {
                AnalysisRequest request = JsonConvert.DeserializeObject<AnalysisRequest>(json);

                string result = process.ExportResult(request.path, request.peakValue1, request.peakValue2, request.importFile, request.exportFile);

                resultInfo.flag = 1;
                resultInfo.msg = "Success";
                resultInfo.data = result;
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
