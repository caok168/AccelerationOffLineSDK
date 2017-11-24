using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MultiWaveProcess
{
    public class MultiWave
    {
        /// <summary>
        /// 通道名称
        /// </summary>
        public string ChannelName { get; set; }

        /// <summary>
        /// 起点位置
        /// </summary>
        public long StartPos { get; set; }

        /// <summary>
        /// 终点位置
        /// </summary>
        public long EndPos { get; set; }

        /// <summary>
        /// 开始里程
        /// </summary>
        public double StartMile { get; set; }

        /// <summary>
        /// 结束里程
        /// </summary>
        public double EndMile { get; set; }

        /// <summary>
        /// 连续多波峰值的绝对值的最小值
        /// </summary>
        public double AbsMinValue { get; set; }
    }
}
