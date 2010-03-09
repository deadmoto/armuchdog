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

    public struct SQLProvider
    {
        public int Id;
        public string Name;
    }

    public struct SQLContract
    {
        public long Id;
        public string RegNum;
        public string ConNum;
        public DateTime RegDate;
        public DateTime RecDate;
        public SQLRegion Region;
        public DateTime ConDate;
        public DateTime ExpDate;
        public SQLProvider Provider;
        public float Sum;
    }
}
