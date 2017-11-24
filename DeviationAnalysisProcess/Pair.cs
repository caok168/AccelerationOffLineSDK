using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DeviationAnalysisProcess
{
    public class Pair
    {
        public Pair(float from, float to)
        {
            mFrom = from;
            mTo = to;
        }
        public bool Contain(float mile)
        {
            if ((mile == mFrom) ||
                 (mile == mTo) ||
                 ((mile > mFrom) && (mile < mTo))
              )
            {
                return true;
            }

            return false;
        }
        private float mFrom, mTo;
    }
}
