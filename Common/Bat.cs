using AccelerationOffLineCommon.Model;
using InGraph.DataProcessClass;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;

namespace AccelerationOffLineCommon
{
    /// <summary>
    /// 批处理操作
    /// </summary>
    public class Bat
    {
        BatProcess.Process batProcess = new BatProcess.Process();

        [DispId(1)]

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

        [DispId(2)]
        public string Process(string json)
        {
            Response resultInfo = new Response();
            try
            {
                //string citFilePath, int fs, int upperFreq, int lowerFreq, int windowLen, List<double> upperChannelFreq, List<double> lowerChannelFreq, int segmentLen, out string filePath

                BatRequest request = JsonConvert.DeserializeObject<BatRequest>(json);

                string idfFilePath="";

                var avgList = batProcess.BatProcessAll(request.path, request.fs, request.upperFreq, request.lowerFreq, request.windowLen,
                    request.upperChannelFreq, request.lowerChannelFreq, request.segmentLen,request.idfFilePath, out idfFilePath);

                string result = JsonConvert.SerializeObject(avgList);

                BatResult br = new BatResult();
                br.IdfFilePath = idfFilePath;
                br.AvgResult = result;

                string data = JsonConvert.SerializeObject(br);

                resultInfo.flag = 1;
                resultInfo.msg = "Success";
                resultInfo.data = data;
            }
            catch (Exception ex)
            {
                resultInfo.flag = 0;
                resultInfo.msg = ex.Message;
            }

            return JsonConvert.SerializeObject(resultInfo);
        }

        [DispId(3)]
        public string ProcessPeak(string json)
        {
            Response resultInfo = new Response();
            try
            {
                PeakRequest request = JsonConvert.DeserializeObject<PeakRequest>(json);
                batProcess.PeakProcess(request.path, request.segavgs);

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

        [DispId(4)]
        public string ProcessRms(string json)
        {
            Response resultInfo = new Response();
            try
            {
                RmsRequest obj = JsonConvert.DeserializeObject<RmsRequest>(json);

                List<string> exportFilePath = batProcess.CalcRms(obj.path, obj.fs, Convert.ToInt32(obj.upperFreq), Convert.ToInt32(obj.lowerFreq), obj.windowLen, obj.upperChannelFreq, obj.lowerChannelFreq, obj.exportPath);

                string path = "";
                if (exportFilePath != null && exportFilePath.Count > 0)
                {
                    path = exportFilePath[0];
                }

                resultInfo.flag = 1;
                resultInfo.msg = "Success";
                resultInfo.data = path;
            }
            catch (Exception ex)
            {
                resultInfo.flag = 0;
                resultInfo.msg = ex.Message;
            }

            return JsonConvert.SerializeObject(resultInfo);
        }

        [DispId(5)]
        public string ProcessMax(string json)
        {
            Response resultInfo = new Response();
            try
            {
                //List<MaxResult> list = new List<MaxResult>();
                //string result = JsonConvert.SerializeObject(list);

                MaxRequest obj = JsonConvert.DeserializeObject<MaxRequest>(json);

                string result = batProcess.CalcMax(obj.path, obj.sectionLen, obj.exportPath, obj.isCreateIdf);


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

        [DispId(6)]
        public string ProcessMaxAndAvg(string json)
        {
            Response resultInfo = new Response();
            try
            {
                MaxRequest obj = JsonConvert.DeserializeObject<MaxRequest>(json);
                string idfFilePath = batProcess.CalcMax(obj.path, obj.sectionLen, obj.exportPath, obj.isCreateIdf);

                var avgList = batProcess.CalcAvg(idfFilePath);

                string result = JsonConvert.SerializeObject(avgList);

                BatResult br = new BatResult();
                br.IdfFilePath = idfFilePath;
                br.AvgResult = result;

                string data = JsonConvert.SerializeObject(br);

                resultInfo.flag = 1;
                resultInfo.msg = "Success";
                resultInfo.data = data;
            }
            catch (Exception ex)
            {
                resultInfo.flag = 0;
                resultInfo.msg = ex.Message;
            }

            return JsonConvert.SerializeObject(resultInfo);
        }

        [DispId(7)]
        public string ProcessAvg(string json)
        {
            Response resultInfo = new Response();
            try
            {
                BaseRequest obj = JsonConvert.DeserializeObject<BaseRequest>(json);

                var avgList = batProcess.CalcAvg(obj.path);

                string result = JsonConvert.SerializeObject(avgList);

                BatResult br = new BatResult();
                br.IdfFilePath = obj.path;
                br.AvgResult = result;

                string data = JsonConvert.SerializeObject(br);

                resultInfo.flag = 1;
                resultInfo.msg = "Success";
                resultInfo.data = data;
            }
            catch (Exception ex)
            {
                resultInfo.flag = 0;
                resultInfo.msg = ex.ToString();
            }

            return JsonConvert.SerializeObject(resultInfo);
        }


        ///// <summary>
        ///// 有效值计算
        ///// </summary>
        ///// <param name="json"></param>
        ///// <returns></returns>
        //[DispId(3)]
        //public string CalcRms(string json)
        //{
        //    Response resultInfo = new Response();
        //    try
        //    {
        //        RmsRequest obj = JsonConvert.DeserializeObject<RmsRequest>(json);

        //        batProcess.CalcRms(obj.path, obj.fs, Convert.ToInt32(obj.upperFreq), Convert.ToInt32(obj.lowerFreq), obj.windowLen, obj.upperChannelFreq, obj.lowerChannelFreq, obj.isPre);

        //        resultInfo.flag = 1;
        //        resultInfo.msg = "Success";
        //        resultInfo.data = "";
        //    }
        //    catch (Exception ex)
        //    {
        //        resultInfo.flag = 0;
        //        resultInfo.msg = ex.Message;
        //    }

        //    return JsonConvert.SerializeObject(resultInfo);
        //}

        ///// <summary>
        ///// 50米区段大值导出
        ///// </summary>
        ///// <param name="json"></param>
        ///// <returns></returns>
        //[DispId(4)]
        //public string CalcMax(string json)
        //{
        //    Response resultInfo = new Response();
        //    try
        //    {
        //        //List<MaxResult> list = new List<MaxResult>();
        //        //string result = JsonConvert.SerializeObject(list);

        //        MaxRequest obj = JsonConvert.DeserializeObject<MaxRequest>(json);

        //        batProcess.CalcMax(obj.path, obj.sectionLen);


        //        resultInfo.flag = 1;
        //        resultInfo.msg = "Success";
        //        resultInfo.data = "";
        //    }
        //    catch (Exception ex)
        //    {
        //        resultInfo.flag = 0;
        //        resultInfo.msg = ex.Message;
        //    }

        //    return JsonConvert.SerializeObject(resultInfo);
        //}

        ///// <summary>
        ///// 平均值计算
        ///// </summary>
        ///// <param name="json"></param>
        ///// <returns></returns>
        //[DispId(5)]
        //public string CalcAvg(string json)
        //{
        //    Response resultInfo = new Response();
        //    try
        //    {
        //        AvgRequest obj = JsonConvert.DeserializeObject<AvgRequest>(json);

        //        double[] results = batProcess.CalcAvg(obj.rmsData.ToList(), obj.spdData.ToList());

        //        AvgResult result = new AvgResult();
        //        result.rmsavg = results[0];
        //        result.speedavg = results[1];
        //        resultInfo.flag = 1;
        //        resultInfo.msg = "Success";
        //        resultInfo.data = JsonConvert.SerializeObject(result);
        //    }
        //    catch (Exception ex)
        //    {
        //        resultInfo.flag = 0;
        //        resultInfo.msg = ex.Message;
        //    }

        //    return JsonConvert.SerializeObject(resultInfo);
        //}

        ///// <summary>
        ///// 轨道冲击指数计算
        ///// </summary>
        ///// <param name="json"></param>
        ///// <returns></returns>
        //[DispId(6)]
        //public string CalcPeak(string json)
        //{
        //    Response resultInfo = new Response();
        //    try
        //    {
        //        PeakRequest obj = JsonConvert.DeserializeObject<PeakRequest>(json);

        //        double[] results = batProcess.CalcPeak(obj.rmsData.ToList(), obj.segavg);

        //        PeakResult result = new PeakResult();
        //        result.peakData = results;

        //        resultInfo.flag = 1;
        //        resultInfo.msg = "Success";
        //        resultInfo.data = JsonConvert.SerializeObject(result.peakData);
        //    }
        //    catch (Exception ex)
        //    {
        //        resultInfo.flag = 0;
        //        resultInfo.msg = ex.Message;
        //    }

        //    return JsonConvert.SerializeObject(resultInfo);
        //}


        
    }
}
