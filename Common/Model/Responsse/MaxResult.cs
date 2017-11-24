using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AccelerationOffLineCommon.Model
{
    public class MaxResult
    {
        /// <summary>
        /// 通道名称
        /// </summary>
        public string channelName { get; set; }

        /// <summary>
        /// 里程数据
        /// </summary>
        public double[] kmData { get; set; }

        /// <summary>
        /// 速度数据
        /// </summary>
        public double[] speedData { get; set; }

        /// <summary>
        /// 50米区段大值
        /// </summary>
        public double[] rmsData { get; set; }

        /// <summary>
        /// 峰值因子
        /// </summary>
        public double[] rmsPeakData { get; set; }
    }
}
