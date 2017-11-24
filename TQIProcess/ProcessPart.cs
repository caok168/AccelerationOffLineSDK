using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using TQIProcess.Model;

namespace TQIProcess
{
    public partial class Process
    {
        /// <summary>
        /// 索引修正条件下：
        /// 根据当前位置(单位：米)，获取相应的在修正之后的文件中的文件指针
        /// </summary>
        /// <param name="listIC">与数据库中IndexSta表对应的长短链索引数据类对象</param>
        /// <param name="iCurrentMeter">当前位置(单位：米)</param>
        /// <param name="tds">通道数</param>
        /// <param name="sKmInc">增减里程标志</param>
        /// <param name="lReviseValue">修正值(采样点的个数)</param>
        /// <returns>经索引修正后，当前位置(单位：米)在文件中的文件指针</returns>
        public long GetNewIndexMeterPositon(List<IndexStaClass> listIC, long iCurrentMeter, int tds, string sKmInc, long lReviseValue)
        {
            //增里程
            if (sKmInc.Contains("增"))
            {
                for (int i = 0; i < listIC.Count; i++)
                {
                    if (iCurrentMeter >= (long)(double.Parse(listIC[i].lStartMeter) * 1000) &&
                        iCurrentMeter <= (long)(double.Parse(listIC[i].LEndMeter) * 1000))
                    {
                        if (iCurrentMeter == (long)(double.Parse(listIC[i].LEndMeter) * 1000))
                        {
                            return listIC[i].lEndPoint;
                        }
                        long lDivMeter = (iCurrentMeter - (long)(double.Parse(listIC[i].lStartMeter) * 1000));
                        long lPos = (long)Math.Ceiling(lDivMeter / (double.Parse(listIC[i].lContainsMeter) * 1000 / listIC[i].lContainsPoint));
                        return listIC[i].lStartPoint + (lReviseValue * 2 * tds) + (lPos * 2 * tds);
                    }
                }
            }
            else//减里程
            {
                for (int i = 0; i < listIC.Count; i++)
                {
                    if (iCurrentMeter <= (long)(double.Parse(listIC[i].lStartMeter) * 1000) &&
                        iCurrentMeter >= (long)(double.Parse(listIC[i].LEndMeter) * 1000))
                    {

                        if (iCurrentMeter == (long)(double.Parse(listIC[i].LEndMeter) * 1000))
                        {
                            return listIC[i].lEndPoint;
                        }

                        long lDivMeter = ((long)(double.Parse(listIC[i].lStartMeter) * 1000) - iCurrentMeter);
                        long lPos = (long)Math.Ceiling((lDivMeter / ((double.Parse(listIC[i].lContainsMeter) * 1000 / listIC[i].lContainsPoint))));
                        return listIC[i].lStartPoint + (lReviseValue * 2 * tds) + (lPos * 2 * tds);
                    }
                }
            }
            return -1;
        }


        /// <summary>
        /// 加解密算法：数组中的每一个字节都与128异或
        /// </summary>
        /// <param name="b">需要被加密的byte数组</param>
        /// <returns>加密之后的byte数组</returns>
        public static byte[] ByteXORByte(byte[] b)
        {
            for (int iIndex = 0; iIndex < b.Length; iIndex++)
            {
                b[iIndex] = (byte)(b[iIndex] ^ 128);
            }
            return b;
        }



        
    }
}
