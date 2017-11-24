using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AccelerationOffLineCommon.Model
{
    public class AnalysisRequest : BaseRequest
    {
        /// <summary>
        /// 直线或曲线超限阈值
        /// </summary>
        public int peakValue1 { get; set; }

        /// <summary>
        /// 道岔超限阈值
        /// </summary>
        public int peakValue2 { get; set; }

        /// <summary>
        /// 道岔文件路径
        /// </summary>
        public string importFile { get; set; }

        public string exportFile { get; set; }
    }
}
