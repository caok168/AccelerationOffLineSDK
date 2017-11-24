using AccelerationOffLineCommon.Model;
using Newtonsoft.Json;
using System;
using System.Runtime.InteropServices;

namespace AccelerationOffLineCommon
{
    public class Cit
    {
        [DispId(21)]
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

        [DispId(22)]
        public string Export(string json)
        {
            Response resultInfo = new Response();
            try
            {
                CITRequest request = JsonConvert.DeserializeObject<CITRequest>(json);

                CitProcess.Process process = new CitProcess.Process();
                

                if (!String.IsNullOrEmpty(request.idfFile) && !String.IsNullOrEmpty(request.dbFile))
                {
                    if (request.channelNames != null && request.channelNames.Length > 0)
                    {
                        process.SaveChannelDataTxt(request.path, request.idfFile, request.dbFile, request.channelNames, request.exportTxtPath, request.startMile, request.endMile, request.sampleCount, request.isChinese);
                    }
                    else
                    {
                        throw new Exception("channleNames 通道数组为空");
                    }
                }
                else
                {
                    if (request.channelNames != null && request.channelNames.Length > 0)
                    {
                        process.SaveChannelDataTxt(request.path, request.channelNames, request.exportTxtPath, request.startMile, request.endMile, request.sampleCount, request.isChinese);
                    }
                    else
                    {
                        throw new Exception("channleNames 通道数组为空");
                    }
                }
                

                resultInfo.flag = 1;
                resultInfo.msg = "Success";
                resultInfo.data = request.exportTxtPath;
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
