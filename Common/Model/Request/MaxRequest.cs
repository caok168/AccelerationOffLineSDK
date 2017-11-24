using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace AccelerationOffLineCommon.Model
{
    public class MaxRequest : BaseRequest
    {
        /// <summary>
        /// 段长
        /// </summary>
        public int sectionLen { get; set; }

        /// <summary>
        /// 文件夹路径
        /// </summary>
        public string exportPath { get; set; }

        public bool isCreateIdf { get; set; }
    }
}
