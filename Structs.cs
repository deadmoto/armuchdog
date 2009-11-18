using System;
using System.Collections.Generic;
using System.Text;

namespace Contracts.NET
{
    public struct SQLRegion
    {
        public short Id;
        public string Name;
    }

    public struct SQLContract
    {
        public long REGN;
        public string registration;
        public string N_DOG;
        public DateTime DATA_REG;
        public DateTime DATA_POST;
        public SQLRegion Region;
        public DateTime DATA_DOG;
        public DateTime DATA_SROK;
        public int ID_SUPPLIER;
        public string ID_NOMENCL;
        public float SUM_DOG;
    }
}
