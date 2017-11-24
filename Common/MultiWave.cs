using AccelerationOffLineCommon.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Runtime.InteropServices;

namespace AccelerationOffLineCommon
{
    /// <summary>
    /// 连续多波
    /// </summary>
    public class MultiWave
    {
        MultiWaveProcess.Process process = new MultiWaveProcess.Process();

        [DispId(41)]
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


        [DispId(42)]
        public string Process(string json)
        {
            Response resultInfo = new Response();
            try
            {
                MultiWaveRequest obj = JsonConvert.DeserializeObject<MultiWaveRequest>(json);

                List<MultiWaveProcess.MultiWave> list = process.GetResult(obj.path, obj.channelName, obj.fs, obj.lowerFreq, obj.upperFreq, obj.count, obj.peakValue);

                //var channelDataFilter = process.Sub_filter_by_fft_and_ifft(obj.channelData, obj.mileData, obj.fs, obj.lowerFreq, obj.upperFreq);

                //List<MultiWaveProcess.MultiWave> list =  process.Sub_preprocessing_continous_multi_wave_on_acc(obj.channelName, obj.mileData, channelDataFilter, obj.count, obj.peakValue);

                List<MultiWaveResult> listResult = new List<MultiWaveResult>();

                for (int i = 0; i < list.Count; i++)
                {
                    MultiWaveResult wave = new MultiWaveResult();
                    wave.channelName = list[i].ChannelName;
                    wave.startPos = list[i].StartPos;
                    wave.endPos = list[i].EndPos;
                    wave.absMinValue = list[i].AbsMinValue;

                    wave.startMile = list[i].StartMile;
                    wave.endMile = list[i].EndMile;

                    listResult.Add(wave);
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
