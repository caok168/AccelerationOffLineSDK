using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AccelerationOffLineCommon.Model
{
    public class RmsRequest:BaseRequest
    {
        /// <summary>
        /// 采样频率
        /// </summary>
        public int fs { get; set; }
        /// <summary>
        /// 上限频率
        /// </summary>
        public double upperFreq { get; set; }
        /// <summary>
        /// 下限频率
        /// </summary>
        public double lowerFreq { get; set; }
        /// <summary>
        /// 有效窗长
        /// </summary>
        public int windowLen { get; set; }
        /// <summary>
        /// 通带上限
        /// </summary>
        public List<double> upperChannelFreq { get; set; }
        /// <summary>
        /// 通道下限
        /// </summary>
        public List<double> lowerChannelFreq { get; set; }
        ///// <summary>
        ///// 是否预处理
        ///// </summary>
        //public bool isPre { get; set; }

        /// <summary>
        /// 导出文件夹路径
        /// </summary>
        public string exportPath { get; set; }
    }
}
