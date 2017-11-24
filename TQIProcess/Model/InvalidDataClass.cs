using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TQIProcess.Model
{
    /// <summary>
    /// 数据类--保存无效标注信息
    /// </summary>
    public class InvalidDataClass
    {
        /// <summary>
        /// id---实际上保存的是标注的日期
        /// </summary>
        public int iId { set; get; }

        /// <summary>
        /// 无效标注起始点的文件指针
        /// </summary>
        public string sStartPoint { set; get; }

        /// <summary>
        /// 无效标注结束点的文件指针
        /// </summary>
        public string sEndPoint { set; get; }

        /// <summary>
        /// 起始点的里程标---起始点文件指针对应的里程标
        /// </summary>
        public string sStartMile { set; get; }

        /// <summary>
        /// 结束点的里程标---结束点文件指针对应的里程标
        /// </summary>
        public string sEndMile { set; get; }

        /// <summary>
        /// 标注类型--来源于Inner.idf文件
        /// 0--数据缺失；1--阳光干扰；2--过分相；3--低速；4--进出站；5--加宽道岔；6--其他
        /// </summary>
        public int iType { set; get; }

        /// <summary>
        /// 标注内容
        /// </summary>
        public string sMemoText { set; get; }

        /// <summary>
        /// 是否显示
        /// </summary>
        public int iIsShow { set; get; }

        /// <summary>
        /// 无效自动剔除时无效数据所属的通道(手动标注时，该值为空字符串)
        /// </summary>
        public String ChannelType { set; get; }

    }
}
