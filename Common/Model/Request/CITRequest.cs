using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AccelerationOffLineCommon.Model
{
    public class CITRequest : BaseRequest
    {
        /// <summary>
        /// idf文件路径
        /// </summary>
        public string idfFile { get; set; }

        /// <summary>
        /// InnerDB文件路径
        /// </summary>
        public string dbFile { get; set; }

        /// <summary>
        /// 通道名称
        /// </summary>
        public string channelName { get; set; }

        /// <summary>
        /// 通道名称数组
        /// </summary>
        public string[] channelNames { get; set; }

        /// <summary>
        /// 采样点个数
        /// </summary>
        public int sampleCount { get; set; }

        /// <summary>
        /// 导出的txt标题是否为中文
        /// </summary>
        public bool isChinese { get; set; }


        /// <summary>
        /// 导出txt文件路径
        /// </summary>
        public string exportTxtPath { get; set; }



        
        /// <summary>
        /// 开始里程
        /// </summary>
        public double startMile { get; set; }

        /// <summary>
        /// 结束里程
        /// </summary>
        public double endMile { get; set; }


        public int channelId { get; set; }
    }
}
