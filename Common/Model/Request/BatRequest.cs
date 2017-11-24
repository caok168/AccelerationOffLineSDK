using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AccelerationOffLineCommon.Model
{
    public class BatRequest : BaseRequest
    {
        //string citFilePath, 
        //int fs, int upperFreq, int lowerFreq, int windowLen, 
        //List<double> upperChannelFreq, List<double> lowerChannelFreq, int segmentLen, 
        //out string filePath

        /// <summary>
        /// 采样频率
        /// </summary>
        public int fs { get; set; }
        /// <summary>
        /// 上限频率
        /// </summary>
        public int upperFreq { get; set; }
        /// <summary>
        /// 下限频率
        /// </summary>
        public int lowerFreq { get; set; }
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

        /// <summary>
        /// 段长
        /// </summary>
        public int segmentLen { get; set; }

        public string idfFilePath { get; set; }
    }
}
