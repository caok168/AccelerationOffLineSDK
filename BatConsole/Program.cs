using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.IO;
using AccelerationOffLineCommon.Model;
using Newtonsoft.Json;

namespace BatConsole
{
    class Program
    {
        static void Main(string[] args)
        {

            Run();

            //RunCommon();
            
        }


        static void RunCommon()
        {
            string configPath = ConfigurationManager.AppSettings["configPath"];

            if (!String.IsNullOrEmpty(configPath))
            {
                string json = ReadConfigTxtContent(configPath);

                AccelerationOffLineCommon.Bat bat = new AccelerationOffLineCommon.Bat();
                string result = bat.ProcessRms(json);

                Console.WriteLine(result);
            }
            else
            {
                Response resultInfo = new Response();
                resultInfo.flag = 0;
                resultInfo.msg = "config配置文件为空";

                string resultMessage = JsonConvert.SerializeObject(resultInfo);

                Console.WriteLine(resultMessage);
            }
        }


        static void Run()
        {
            BatProcess.Process batProcess = new BatProcess.Process();

            string configPath = ConfigurationManager.AppSettings["configPath"];

            Response resultInfo = new Response();

            try
            {
                if (!String.IsNullOrEmpty(configPath))
                {
                    string json = ReadConfigTxtContent(configPath);
                    RmsRequest obj = JsonConvert.DeserializeObject<RmsRequest>(json);

                    List<string> exportFilePath = batProcess.CalcRms(obj.path, obj.fs, Convert.ToInt32(obj.upperFreq), Convert.ToInt32(obj.lowerFreq), obj.windowLen, obj.upperChannelFreq, obj.lowerChannelFreq, obj.exportPath);

                    string path = "";

                    resultInfo.flag = 1;

                    if (exportFilePath != null && exportFilePath.Count > 0)
                    {
                        path = exportFilePath[0];
                    }

                    if (!String.IsNullOrEmpty(path))
                    {
                        //Console.WriteLine(path);

                        resultInfo.msg = "Success";
                        resultInfo.data = path;

                        string resultMessage = JsonConvert.SerializeObject(resultInfo);

                        Console.WriteLine(resultMessage);
                    }
                    else
                    {
                        //Console.WriteLine("生成cit失败");
                        resultInfo.flag = 0;
                        resultInfo.msg = "生成cit失败";

                        string resultMessage = JsonConvert.SerializeObject(resultInfo);

                        Console.WriteLine(resultMessage);
                    }
                }
                else
                {
                    //Console.WriteLine("config配置文件为空");

                    resultInfo.flag = 0;
                    resultInfo.msg = "config配置文件为空";

                    string resultMessage = JsonConvert.SerializeObject(resultInfo);

                    Console.WriteLine(resultMessage);
                }
            }
            catch (Exception ex)
            {
                resultInfo.flag = 0;
                resultInfo.msg = ex.Message;

                string resultMessage = JsonConvert.SerializeObject(resultInfo);

                Console.WriteLine(resultMessage);
            }
        }

        static string ReadConfigTxtContent(string path)
        {
            string content = "";

            using (StreamReader sr = new StreamReader(path,Encoding.Default))
            {
                content = sr.ReadToEnd();
            }

            return content;
        }
    }
}
