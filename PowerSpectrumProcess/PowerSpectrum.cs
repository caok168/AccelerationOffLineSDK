using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PowerSpectrumProcess
{
    public class PowerSpectrum
    {
        /// <summary>
        /// 通道名称
        /// </summary>
        public string ChannelName { get; set; }

        /// <summary>
        /// 频率
        /// </summary>
        public double Frequency { get; set; }

        /// <summary>
        /// 幅值谱
        /// </summary>
        public double PeakValue { get; set; }
    }
}
