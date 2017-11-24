using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TQIProcess.Model
{
    public class TQIClass
    {
        /// <summary>
        /// 左高低
        /// </summary>
        public double zgd = 0;
        /// <summary>
        /// 右高低
        /// </summary>
        public double ygd = 0;
        /// <summary>
        /// 左轨向
        /// </summary>
        public double zgx = 0;
        /// <summary>
        /// 右轨向
        /// </summary>
        public double ygx = 0;
        /// <summary>
        /// 轨距
        /// </summary>
        public double gj = 0;
        /// <summary>
        /// 水平
        /// </summary>
        public double sp = 0;
        /// <summary>
        /// 三角坑
        /// </summary>
        public double sjk = 0;
        /// <summary>
        /// 
        /// </summary>
        public double hj = 0;
        /// <summary>
        /// 
        /// </summary>
        public double cj = 0;
        /// <summary>
        /// 
        /// </summary>
        public int pjsd = 0;
        /// <summary>
        /// 
        /// </summary>
        public int iKM = 0;
        public float iMeter = 0;
        public double GetTQISum()
        {
            return zgd + ygd + zgx + ygx + gj + sp + sjk;
        }
        public int iValid = 1;

        public String subCode = null;
        public DateTime runDate = DateTime.Now;
    }
}
