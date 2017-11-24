using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AccelerationOffLineCommon.Model
{
    public class PeakRequest : BaseRequest
    {
        /// <summary>
        /// 区段平均值
        /// </summary>
        public double segavg { get; set; }
        /// <summary>
        /// 50米区段大值
        /// </summary>
        public double[] rmsData { get; set; }

        /// <summary>
        /// 区段平均值数组
        /// </summary>
        public double[] segavgs { get; set; }
    }
}
