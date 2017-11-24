using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AccelerationOffLineCommon.Model
{
    /// <summary>
    /// 连续多波请求参数
    /// </summary>
    public class MultiWaveRequest:BaseRequest
    {
        /// <summary>
        /// 通道名称
        /// </summary>
        public string channelName { get; set; }

        /// <summary>
        /// 里程数据
        /// </summary>
        public double[] mileData { get; set; }

        /// <summary>
        /// 原始信号：车体垂，车体横，架构垂，架构横
        /// </summary>
        public double[] channelData { get; set; }

        /// <summary>
        /// 采样频率
        /// </summary>
        public int fs { get; set; }

        /// <summary>
        /// 下限频率
        /// </summary>
        public double lowerFreq { get; set; }

        /// <summary>
        /// 上限频率
        /// </summary>
        public double upperFreq { get; set; }

        /// <summary>
        /// 峰值
        /// </summary>
        public double peakValue { get; set; }

        /// <summary>
        /// 个数
        /// </summary>
        public int count { get; set; }
    }
}
