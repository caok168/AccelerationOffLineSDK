namespace Test
{
    partial class Form1
    {
        /// <summary>
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.btnMax = new System.Windows.Forms.Button();
            this.btnRms = new System.Windows.Forms.Button();
            this.btnBatProcess = new System.Windows.Forms.Button();
            this.btnPeak = new System.Windows.Forms.Button();
            this.btnAnalysis = new System.Windows.Forms.Button();
            this.btnAvg = new System.Windows.Forms.Button();
            this.btnExportTxt = new System.Windows.Forms.Button();
            this.btnPower = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.btnMulti = new System.Windows.Forms.Button();
            this.btnTqi = new System.Windows.Forms.Button();
            this.btn_test_tqi = new System.Windows.Forms.Button();
            this.btnExportExcel = new System.Windows.Forms.Button();
            this.btnCitToTxt2 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btnMax
            // 
            this.btnMax.Location = new System.Drawing.Point(39, 61);
            this.btnMax.Name = "btnMax";
            this.btnMax.Size = new System.Drawing.Size(75, 23);
            this.btnMax.TabIndex = 0;
            this.btnMax.Text = "区段大值";
            this.btnMax.UseVisualStyleBackColor = true;
            this.btnMax.Click += new System.EventHandler(this.btnMax_Click);
            // 
            // btnRms
            // 
            this.btnRms.Location = new System.Drawing.Point(39, 32);
            this.btnRms.Name = "btnRms";
            this.btnRms.Size = new System.Drawing.Size(75, 23);
            this.btnRms.TabIndex = 1;
            this.btnRms.Text = "有效值";
            this.btnRms.UseVisualStyleBackColor = true;
            this.btnRms.Click += new System.EventHandler(this.btnRms_Click);
            // 
            // btnBatProcess
            // 
            this.btnBatProcess.Location = new System.Drawing.Point(120, 32);
            this.btnBatProcess.Name = "btnBatProcess";
            this.btnBatProcess.Size = new System.Drawing.Size(75, 23);
            this.btnBatProcess.TabIndex = 2;
            this.btnBatProcess.Text = "批处理";
            this.btnBatProcess.UseVisualStyleBackColor = true;
            this.btnBatProcess.Click += new System.EventHandler(this.btnBatProcess_Click);
            // 
            // btnPeak
            // 
            this.btnPeak.Location = new System.Drawing.Point(39, 119);
            this.btnPeak.Name = "btnPeak";
            this.btnPeak.Size = new System.Drawing.Size(75, 23);
            this.btnPeak.TabIndex = 3;
            this.btnPeak.Text = "轨道冲击指数";
            this.btnPeak.UseVisualStyleBackColor = true;
            this.btnPeak.Click += new System.EventHandler(this.btnPeak_Click);
            // 
            // btnAnalysis
            // 
            this.btnAnalysis.Location = new System.Drawing.Point(120, 61);
            this.btnAnalysis.Name = "btnAnalysis";
            this.btnAnalysis.Size = new System.Drawing.Size(75, 23);
            this.btnAnalysis.TabIndex = 4;
            this.btnAnalysis.Text = "分 析";
            this.btnAnalysis.UseVisualStyleBackColor = true;
            this.btnAnalysis.Click += new System.EventHandler(this.btnAnalysis_Click);
            // 
            // btnAvg
            // 
            this.btnAvg.Location = new System.Drawing.Point(39, 90);
            this.btnAvg.Name = "btnAvg";
            this.btnAvg.Size = new System.Drawing.Size(75, 23);
            this.btnAvg.TabIndex = 5;
            this.btnAvg.Text = "平均值";
            this.btnAvg.UseVisualStyleBackColor = true;
            this.btnAvg.Click += new System.EventHandler(this.btnAvg_Click);
            // 
            // btnExportTxt
            // 
            this.btnExportTxt.Location = new System.Drawing.Point(201, 32);
            this.btnExportTxt.Name = "btnExportTxt";
            this.btnExportTxt.Size = new System.Drawing.Size(75, 23);
            this.btnExportTxt.TabIndex = 6;
            this.btnExportTxt.Text = "CitToTxt";
            this.btnExportTxt.UseVisualStyleBackColor = true;
            this.btnExportTxt.Click += new System.EventHandler(this.btnExportTxt_Click);
            // 
            // btnPower
            // 
            this.btnPower.Location = new System.Drawing.Point(201, 61);
            this.btnPower.Name = "btnPower";
            this.btnPower.Size = new System.Drawing.Size(75, 23);
            this.btnPower.TabIndex = 7;
            this.btnPower.Text = "功率谱";
            this.btnPower.UseVisualStyleBackColor = true;
            this.btnPower.Click += new System.EventHandler(this.btnPower_Click);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(243, 137);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 8;
            this.button1.Text = "button1";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // btnMulti
            // 
            this.btnMulti.Location = new System.Drawing.Point(201, 90);
            this.btnMulti.Name = "btnMulti";
            this.btnMulti.Size = new System.Drawing.Size(75, 23);
            this.btnMulti.TabIndex = 9;
            this.btnMulti.Text = "连续多波";
            this.btnMulti.UseVisualStyleBackColor = true;
            this.btnMulti.Click += new System.EventHandler(this.btnMulti_Click);
            // 
            // btnTqi
            // 
            this.btnTqi.Location = new System.Drawing.Point(201, 167);
            this.btnTqi.Name = "btnTqi";
            this.btnTqi.Size = new System.Drawing.Size(75, 23);
            this.btnTqi.TabIndex = 10;
            this.btnTqi.Text = "tqi";
            this.btnTqi.UseVisualStyleBackColor = true;
            this.btnTqi.Click += new System.EventHandler(this.btnTqi_Click);
            // 
            // btn_test_tqi
            // 
            this.btn_test_tqi.Location = new System.Drawing.Point(201, 197);
            this.btn_test_tqi.Name = "btn_test_tqi";
            this.btn_test_tqi.Size = new System.Drawing.Size(75, 23);
            this.btn_test_tqi.TabIndex = 11;
            this.btn_test_tqi.Text = "tqi测试";
            this.btn_test_tqi.UseVisualStyleBackColor = true;
            this.btn_test_tqi.Click += new System.EventHandler(this.btn_test_tqi_Click);
            // 
            // btnExportExcel
            // 
            this.btnExportExcel.Location = new System.Drawing.Point(120, 196);
            this.btnExportExcel.Name = "btnExportExcel";
            this.btnExportExcel.Size = new System.Drawing.Size(75, 23);
            this.btnExportExcel.TabIndex = 12;
            this.btnExportExcel.Text = "导出Excel";
            this.btnExportExcel.UseVisualStyleBackColor = true;
            this.btnExportExcel.Click += new System.EventHandler(this.btnExportExcel_Click);
            // 
            // btnCitToTxt2
            // 
            this.btnCitToTxt2.Location = new System.Drawing.Point(293, 32);
            this.btnCitToTxt2.Name = "btnCitToTxt2";
            this.btnCitToTxt2.Size = new System.Drawing.Size(75, 23);
            this.btnCitToTxt2.TabIndex = 13;
            this.btnCitToTxt2.Text = "CitToTxt2";
            this.btnCitToTxt2.UseVisualStyleBackColor = true;
            this.btnCitToTxt2.Click += new System.EventHandler(this.btnCitToTxt2_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(418, 240);
            this.Controls.Add(this.btnCitToTxt2);
            this.Controls.Add(this.btnExportExcel);
            this.Controls.Add(this.btn_test_tqi);
            this.Controls.Add(this.btnTqi);
            this.Controls.Add(this.btnMulti);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.btnPower);
            this.Controls.Add(this.btnExportTxt);
            this.Controls.Add(this.btnAvg);
            this.Controls.Add(this.btnAnalysis);
            this.Controls.Add(this.btnPeak);
            this.Controls.Add(this.btnBatProcess);
            this.Controls.Add(this.btnRms);
            this.Controls.Add(this.btnMax);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnMax;
        private System.Windows.Forms.Button btnRms;
        private System.Windows.Forms.Button btnBatProcess;
        private System.Windows.Forms.Button btnPeak;
        private System.Windows.Forms.Button btnAnalysis;
        private System.Windows.Forms.Button btnAvg;
        private System.Windows.Forms.Button btnExportTxt;
        private System.Windows.Forms.Button btnPower;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button btnMulti;
        private System.Windows.Forms.Button btnTqi;
        private System.Windows.Forms.Button btn_test_tqi;
        private System.Windows.Forms.Button btnExportExcel;
        private System.Windows.Forms.Button btnCitToTxt2;
    }
}

