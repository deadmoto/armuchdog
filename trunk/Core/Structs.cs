using System;

namespace Contracts.NET
{
    struct Region
    {
        public int Id;
        public string Name;
    }

    public struct Provider
    {
        public int Id;
        public string Name;
    }

    public struct Contract
    {
        public long Id;
        public string RegNum;
        public string ConNum;
        public DateTime RegDate;
        public DateTime RecDate;
        public int Region;
        public DateTime ConDate;
        public DateTime ExpDate;
        public Provider Provider;
        public float Sum;
    }
}
