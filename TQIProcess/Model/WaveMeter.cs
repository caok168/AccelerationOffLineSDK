using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TQIProcess.Model
{
    [Serializable]
    public class WaveMeter
    {
        /// <summary>
        /// 单位：公里--对应于第一个通道数
        /// </summary>
        public int Km = 0;

        /// <summary>
        /// 保存cit原始文件时，这里表示采样点数
        /// 保存包含有索引的文件时，这里表示米数
        /// </summary>
        public float Meter = 0;

        /// <summary>
        /// 文件指针：里程标在cit文件中的位置
        /// </summary>
        public long lPosition = 0;

        /// <summary>
        /// 获取里程标：单位为米
        /// 不带索引--参数为采样通道的通道比例
        /// 带索引--参数为1
        /// </summary>
        /// <param name="f">取样通道的通道比例</param>
        /// <returns>公里标</returns>
        public int GetMeter(float f)
        {
            return Km * 1000 + (int)(Meter / f);
        }

    }
}
