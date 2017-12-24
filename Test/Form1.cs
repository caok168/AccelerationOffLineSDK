using AccelerationOffLineCommon.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Test
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();

            this.Load += Form1_Load;
        }

        void Form1_Load(object sender, EventArgs e)
        {
            //BatProcess.Process calc = new BatProcess.Process();

            //string result = cit.Test();
        }

        #region 离线加速度

        private void btnMax_Click(object sender, EventArgs e)
        {
            AccelerationOffLineCommon.Bat bat = new AccelerationOffLineCommon.Bat();
            AccelerationOffLineCommon.Model.MaxRequest max = new AccelerationOffLineCommon.Model.MaxRequest();
            max.path = @"H:\工作文件汇总\铁科院\程序\离线加速度\test\CitData_160612060534_CHSS_11_11.cit";
            max.exportPath = @"H:\工作文件汇总\铁科院\程序\离线加速度\test\";
            max.sectionLen = 160;
            max.isCreateIdf = false;
            string json = JsonConvert.SerializeObject(max);
            string result = bat.ProcessMax(json);
        }

        private void btnRms_Click(object sender, EventArgs e)
        {
            AccelerationOffLineCommon.Bat bat = new AccelerationOffLineCommon.Bat();
            AccelerationOffLineCommon.Model.RmsRequest rms = new AccelerationOffLineCommon.Model.RmsRequest();
            rms.fs = 2000;
            rms.upperFreq = 500;
            rms.lowerFreq = 20;
            rms.path = @"H:\工作文件汇总\铁科院\程序\离线加速度\test\CitData_160612060534_CHSS_11.cit";

            rms.exportPath = @"H:\工作文件汇总\铁科院\程序\离线加速度\test\";
            rms.windowLen = 160;
            rms.lowerChannelFreq = new List<double> { 0.2, 0.2, 0.2, 0.2, 0.2 };
            rms.upperChannelFreq = new List<double> { 20, 10, 10, 20, 20 };

            string json = JsonConvert.SerializeObject(rms);
            string result = bat.ProcessRms(json);

        }

        private void btnBatProcess_Click(object sender, EventArgs e)
        {
            AccelerationOffLineCommon.Bat bat = new AccelerationOffLineCommon.Bat();
            AccelerationOffLineCommon.Model.BatRequest rms = new AccelerationOffLineCommon.Model.BatRequest();
            rms.fs = 2000;
            rms.upperFreq = 500;
            rms.lowerFreq = 20;
            rms.path = @"H:\工作文件汇总\铁科院\程序\离线加速度\cit\CitData_160612060534_CHSS_11.cit";
            rms.windowLen = 160;
            rms.lowerChannelFreq = new List<double> { 0.2, 0.2, 0.2, 0.2, 0.2 };
            rms.upperChannelFreq = new List<double> { 20, 10, 10, 20, 20 };
            rms.idfFilePath = @"H:\";
            rms.segmentLen = 160;

            string json=JsonConvert.SerializeObject(rms);

            string result = bat.Process(json);
        }

        private void btnPeak_Click(object sender, EventArgs e)
        {
            AccelerationOffLineCommon.Bat bat = new AccelerationOffLineCommon.Bat();
            AccelerationOffLineCommon.Model.PeakRequest peak = new AccelerationOffLineCommon.Model.PeakRequest();
            peak.path = @"H:\\工作文件汇总\\铁科院\\程序\\离线加速度\\cit\\CitData_160612060534_CHSS_11_11_Rms.idf";
            peak.segavgs = new double[] { 0.673, 0.786, 0.819 };

            string json = JsonConvert.SerializeObject(peak);

            string result = bat.ProcessPeak(json);
        }

        private void btnAnalysis_Click(object sender, EventArgs e)
        {
            AccelerationOffLineCommon.DeviationAnalysis analysisProcess = new AccelerationOffLineCommon.DeviationAnalysis();
            AccelerationOffLineCommon.Model.AnalysisRequest analysis = new AccelerationOffLineCommon.Model.AnalysisRequest();

            //analysis.path = @"H:\工作文件汇总\铁科院\程序\离线加速度\cit\CitData_160612060534_CHSS_11_11_Rms.idf";
            analysis.path = @"H:\工作文件汇总\铁科院\程序\离线加速度\离线加速度dll\测试\CitData_170907214945_CGZX_11_Rms.idf";
            analysis.peakValue1 = 4;
            analysis.peakValue2 = 6;
            analysis.importFile = @"H:\工作文件汇总\铁科院\程序\离线加速度\离线加速度dll\分析\分析功能测试\台账数据\2-上行台账(加直线).xls";
            analysis.exportFile = @"H:\工作文件汇总\铁科院\程序\离线加速度\cit\test111.csv";

            string json = JsonConvert.SerializeObject(analysis);
            string result = analysisProcess.Process(json);
        }

        private void btnAvg_Click(object sender, EventArgs e)
        {
            AccelerationOffLineCommon.Bat bat = new AccelerationOffLineCommon.Bat();
            AccelerationOffLineCommon.Model.BaseRequest max = new AccelerationOffLineCommon.Model.BaseRequest();
            max.path = @"H:\工作文件汇总\铁科院\程序\离线加速度\离线加速度dll\测试\CitData_170907214945_CGZX_11_Rms.idf";
            //max.path = @"F:\个人文件\铁路\工程代码\离线加速度\离线加速度dll平台开发\数据\CitData_160612202839_GZXS_11_Rms.idf";
            
            string json = JsonConvert.SerializeObject(max);
            string result = bat.ProcessAvg(json);
        }

        private void btnExportTxt_Click(object sender, EventArgs e)
        {
            AccelerationOffLineCommon.Cit cit = new AccelerationOffLineCommon.Cit();
            AccelerationOffLineCommon.Model.CITRequest request = new AccelerationOffLineCommon.Model.CITRequest();
            request.path = @"F:\个人文件\铁路\工程代码\车载加速度\data\CitData_160823055537_GJHX.cit";
            request.exportTxtPath = @"F:\个人文件\铁路\工程代码\车载加速度\data\123.txt";
            request.channelId = 1;

            string json = JsonConvert.SerializeObject(request);
            string result = cit.Export(json);
            
        }

        private void btnPower_Click(object sender, EventArgs e)
        {
            AccelerationOffLineCommon.PowerSpectrum power = new AccelerationOffLineCommon.PowerSpectrum();
            AccelerationOffLineCommon.Model.PowerSpectrumRequest request = new AccelerationOffLineCommon.Model.PowerSpectrumRequest();
            request.path = @"H:\工作文件汇总\铁科院\程序\离线加速度\test\CitData_160612060534_CHSS_11.cit";
            request.channelName = "Fr_Vt_L_11";
            request.startMile = 180;
            request.endMile = 500;
            request.fourier = 1024;
            request.timeLen = 0.03;

            CitFileProcess.CitFileHelper citHelper = new CitFileProcess.CitFileHelper();
            var list = citHelper.GetDataChannelInfoHead(request.path);

            string json = JsonConvert.SerializeObject(request);
            string result = power.Process(json);




            //PowerSpectrumProcess.Process process = new PowerSpectrumProcess.Process();
            //process.GetResult(request.path, request.channelName, request.startMile, request.endMile, request.fourier, request.timeLen);


        }

        private void button1_Click(object sender, EventArgs e)
        {
            CitFileProcess.CitFileHelper citHelper = new CitFileProcess.CitFileHelper();
            
        }

        private void btnMulti_Click(object sender, EventArgs e)
        {
            AccelerationOffLineCommon.MultiWave multiwave = new AccelerationOffLineCommon.MultiWave();
            AccelerationOffLineCommon.Model.MultiWaveRequest request = new AccelerationOffLineCommon.Model.MultiWaveRequest();
            request.path = @"H:\工作文件汇总\铁科院\程序\离线加速度\test\CitData_160612060534_CHSS_11.cit";
            request.channelName = "Fr_Vt_L_11";
            request.fs = 333;
            request.lowerFreq = 0.01;
            request.upperFreq = 20;
            request.peakValue = 0.5;
            request.count = 3;

            string json=JsonConvert.SerializeObject(request);
            string result = multiwave.Process(json);
        }

        #endregion

        


        #region tqi

        private void btnTqi_Click(object sender, EventArgs e)
        {
            TQIProcessCommon.Model.TqiRequest request = new TQIProcessCommon.Model.TqiRequest();
            TQIProcessCommon.Process process = new TQIProcessCommon.Process();
            request.path = @"F:\个人文件\铁路\工程代码\轨检\data\轨检cit\上行减里程\GNHS-HANGZHOU-NANJING-14052016-175302-1.cit";
            request.mileIdfFilePath = @"F:\个人文件\铁路\工程代码\轨检\data\轨检cit\上行减里程\GNHS-HANGZHOU-NANJING-14052016-175302-1.idf";
            request.invalidIdfFilePath = @"F:\个人文件\铁路\工程代码\轨检\data\轨检cit\上行减里程\GNHS-HANGZHOU-NANJING-14052016-175302-1.idf";
            request.exportFilePath = @"F:\个人文件\铁路\工程代码\轨检\data\轨检cit\上行减里程\tqiResult.xls";

            request.path = @"H:\工作文件汇总\铁科院\程序\轨检\data\cit\GNHS-HANGZHOU-NANJING-14052016-175302-1.cit";
            request.mileIdfFilePath = @"H:\工作文件汇总\铁科院\程序\轨检\data\cit\GNHS-HANGZHOU-NANJING-14052016-175302-1.idf";
            request.invalidIdfFilePath = @"H:\工作文件汇总\铁科院\程序\轨检\data\cit\GNHS-HANGZHOU-NANJING-14052016-175302-1.idf";
            request.exportFilePath = @"H:\工作文件汇总\铁科院\程序\轨检\data\cit\tqiResult.xls";

            string json = JsonConvert.SerializeObject(request);

            string result = process.CalcTqi(json);
        }

        #endregion

        private void btn_test_tqi_Click(object sender, EventArgs e)
        {
            TQIProcessCommon.Process process = new TQIProcessCommon.Process();
            string result = process.Test();
        }

        private void btnExportExcel_Click(object sender, EventArgs e)
        {
            StringBuilder sbExport = new StringBuilder();
            String yes = "是";

            // liyang: 最终导出的csv中，增加是否道岔这一列。
            String head = "里程,速度,阀值,轨道冲击指数,50米区段大值,项目,是否道岔";
            sbExport.AppendLine(head);

            string exportFile = @"H:\test.csv";

            StreamWriter sw = new StreamWriter(exportFile, false, Encoding.Default);
            sw.Write(sbExport.ToString());
            sw.Close();
        }

        private void btnCitToTxt2_Click(object sender, EventArgs e)
        {
            CITRequest request = new CITRequest();
            request.channelNames = new string[] { "M", "AB_Vt_L_11" };
            request.sampleCount = 100000;
            request.exportTxtPath = @"F:\个人文件\铁路\testCit\1111.txt";
            request.path = @"F:\个人文件\铁路\testCit\CitData_160424063432_CNGX.cit";

            request.path = @"H:\工作文件汇总\铁科院\程序\车载加速度\数据文件\CitData_160424063432_CNGX.cit";
            request.exportTxtPath = @"H:\工作文件汇总\铁科院\程序\车载加速度\数据文件\test.txt";
            request.startMile = 1;
            request.endMile = 100;
            request.isChinese = false;

            string str = JsonConvert.SerializeObject(request);

            AccelerationOffLineCommon.Cit cit = new AccelerationOffLineCommon.Cit();
            string json = "{\"sampleCount\":\"100000\",\"serviceID\":\"cit2txt\",\"exportTxtPath\":\"d:/user/赵桂东/CitData_160606204011_GJGX.txt\",\"path\":\"d:/user/赵桂东/CitData_160606204011_GJGX.cit\",\"user\":\"赵桂东\",\"channelNames\":[\"M\",\"AB_Vt_L_11\"]}";
            string result = cit.Export(str);
        }

    }
}
