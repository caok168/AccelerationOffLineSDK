using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AccelerationOffLineCommon.Model
{
    public class MultiWaveResult
    {
        /// <summary>
        /// 通道名称
        /// </summary>
        public string channelName { get; set; }

        /// <summary>
        /// 起点位置
        /// </summary>
        public long startPos { get; set; }

        /// <summary>
        /// 终点位置
        /// </summary>
        public long endPos { get; set; }

        public double startMile { get; set; }

        public double endMile { get; set; }

        /// <summary>
        /// 连续多波峰值的绝对值的最小值
        /// </summary>
        public double absMinValue { get; set; }
    }
}
