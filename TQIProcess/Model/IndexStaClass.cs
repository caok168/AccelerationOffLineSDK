using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TQIProcess.Model
{
    /// <summary>
    /// 与数据库中IndexSta表对应的长短链索引数据类
    /// </summary>
    public class IndexStaClass
    {
        /// <summary>
        /// 长短链索引id
        /// </summary>
        public int iID;
        /// <summary>
        /// 这个值估计没什么特殊含义
        /// </summary>
        public int iIndexID;
        /// <summary>
        /// 长短链对应的起始文件指针
        /// </summary>
        public long lStartPoint;
        /// <summary>
        /// 长短链对应的起始公里标
        /// </summary>
        public string lStartMeter;
        /// <summary>
        /// 长短链对应的终止文件指针
        /// </summary>
        public long lEndPoint;
        /// <summary>
        /// 长短链对应的终止公里标
        /// </summary>
        public string LEndMeter;
        /// <summary>
        /// 长短链所包含的采样点数
        /// </summary>
        public long lContainsPoint;
        /// <summary>
        /// 长短链所包含的公里数（单位为公里）
        /// </summary>
        public string lContainsMeter;
        /// <summary>
        /// 长短链类别
        /// </summary>
        public string sType;
    }
}
