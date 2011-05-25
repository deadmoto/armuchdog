using System;

namespace Contracts.NET.Data
{
    public class DetailData
    {
        public long Id;
        public ClassifierData Classifier;
        public OpcodeData Opcode;
        public DateTime DetailDate;
        public double Price;
        public bool Report;
        public string Comment;

        public object[] ToArray()
        {
            object[] Result = new object[5];
            if (DetailDate != DateTime.MinValue) { Result[0] = DetailDate.ToShortDateString(); }
            Result[1] = Classifier.Id;
            Result[2] = Opcode.Id;
            Result[3] = Comment;
            Result[4] = Price;
            return Result;
        }
    }
}
