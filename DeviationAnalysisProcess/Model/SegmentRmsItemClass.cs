using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DeviationAnalysisProcess.Model
{
    /// <summary>
    /// 超标值列表中的一条数据
    /// </summary>
    public class SegmentRmsItemClass
    {
        /// <summary>
        /// 超标值id
        /// </summary>
        public int id;
        /// <summary>
        /// 超标值的里程
        /// </summary>
        public float kiloMeter;
        /// <summary>
        /// 超标值处的速度
        /// </summary>
        public float speed;
        /// <summary>
        /// 50米区段大值
        /// </summary>
        public float segmentRms;
        /// <summary>
        /// 轨道冲击指数
        /// </summary>
        public float segmentRmsPeak;
        /// <summary>
        /// 是否有效
        /// </summary>
        //public int valid;
        public string valid;
        /// <summary>
        /// 通道名
        /// </summary>
        public String channelName;
        /// <summary>
        /// 是否是道岔，这个域是实时计算出来的
        /// </summary>
        public String isDaoCha = "否"; // "是"   或者  "否"。
    }
}
