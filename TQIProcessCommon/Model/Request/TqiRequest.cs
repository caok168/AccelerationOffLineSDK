using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TQIProcessCommon.Model
{
    public class TqiRequest:BaseRequest
    {
        public string mileIdfFilePath { get; set; }

        public int mileUnitValue { get; set; }

        public float startMile { get; set; }

        public float endMile { get; set; }

        public string invalidIdfFilePath { get; set; }

        public string exportFilePath { get; set; }

    }
}
