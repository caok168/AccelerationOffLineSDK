using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AccelerationOffLineCommon.Model
{
    /// <summary>
    /// 功率谱请求参数
    /// </summary>
    public class PowerSpectrumRequest : BaseRequest
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
        /// 加速度信号：车体或是构架
        /// </summary>
        public double[] channelData { get; set; }

        /// <summary>
        /// 傅里叶变换窗长
        /// </summary>
        public double fourier { get; set; }
        /// <summary>
        /// 时间步长
        /// </summary>
        public double timeLen { get; set; }

        /// <summary>
        /// 是否使用索引文件
        /// </summary>
        public bool isIndex { get; set; }

        /// <summary>
        /// idf文件路径
        /// </summary>
        public string idfFilePath { get; set; }

        public double startMile { get; set; }

        public double endMile { get; set; }
    }
}
