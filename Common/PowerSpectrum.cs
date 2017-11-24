using AccelerationOffLineCommon.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;

namespace AccelerationOffLineCommon
{
    /// <summary>
    /// 功率谱
    /// </summary>
    public class PowerSpectrum
    {
        PowerSpectrumProcess.Process process = new PowerSpectrumProcess.Process();

        [DispId(51)]
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

        [DispId(52)]
        public string Process(string json)
        {
            Response resultInfo = new Response();
            try
            {
                PowerSpectrumRequest obj = JsonConvert.DeserializeObject<PowerSpectrumRequest>(json);

                List<PowerSpectrumProcess.PowerSpectrum> list = process.GetResult(obj.path, obj.channelName, obj.startMile, obj.endMile, obj.fourier, obj.timeLen);

                //List<PowerSpectrumProcess.PowerSpectrum> list = process.Sub_Fourier_analysis(obj.channelName, obj.mileData, obj.channelData, obj.fourier, obj.timeLen);

                List<PowerSpectrumResult> listResult = new List<PowerSpectrumResult>();

                for (int i = 0; i < list.Count; i++)
                {
                    PowerSpectrumResult power = new PowerSpectrumResult();
                    power.channelName = list[i].ChannelName;
                    power.frequency = list[i].Frequency;
                    power.peakValue = list[i].PeakValue;

                    listResult.Add(power);
                }

                string result = JsonConvert.SerializeObject(listResult);

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
