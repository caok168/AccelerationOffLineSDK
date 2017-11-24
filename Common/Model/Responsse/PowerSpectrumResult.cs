using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AccelerationOffLineCommon.Model
{
    public class PowerSpectrumResult
    {
        /// <summary>
        /// 通道名称
        /// </summary>
        public string channelName { get; set; }

        /// <summary>
        /// 频率
        /// </summary>
        public double frequency { get; set; }

        /// <summary>
        /// 幅值谱
        /// </summary>
        public double peakValue { get; set; }
    }
}
