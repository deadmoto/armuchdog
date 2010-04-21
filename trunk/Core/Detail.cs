using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Contracts.NET
{
    /// <summary>
    /// Represents detail data
    /// </summary>
    public struct DetailData
    {
        public long Id;
        public ClassifierData Classifier;
        public OpcodeData Opcode;
        public DateTime DetailDate;
        public double Price;
        public bool Report;
        public string Comment;

        /// <summary>
        /// Returns array of fields
        /// </summary>
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

    /// <summary>
    /// Provides detail list
    /// </summary>
    static class Detail
    {
        public static List<DetailData> DetailList = new List<DetailData>();

        /// <summary>
        /// Returns detail list by Id
        /// </summary>
        public static List<DetailData> FindAll(long Id)
        {
            return DetailList.FindAll(delegate(DetailData Detail) { return Detail.Id == Id; });
        }

        /// <summary>
        /// Retrieves detail list from database
        /// </summary>
        public static void Retrieve()
        {
            DetailList.Clear();
            SqlCommand Command = Connection.GetCommand("SELECT * FROM subcontract");
            SqlDataReader Reader = Command.ExecuteReader();
            while (Reader.Read())
            {
                DetailData Detail = new DetailData();
                Detail.Id = Reader.GetInt64(Reader.GetOrdinal("id"));
                Detail.Classifier = Classifier.Find(Reader.GetString(Reader.GetOrdinal("nomencl")).Trim());
                Detail.Opcode = Opcode.Find(Reader.GetString(Reader.GetOrdinal("code")).Trim());
                if (!Reader.IsDBNull(Reader.GetOrdinal("subdate")))
                {
                    Detail.DetailDate = Reader.GetDateTime(Reader.GetOrdinal("subdate"));
                }
                Detail.Price = Reader.GetDouble(Reader.GetOrdinal("price"));
                Detail.Report = Reader.GetBoolean(Reader.GetOrdinal("report"));
                Detail.Comment = Reader.GetString(Reader.GetOrdinal("comment")).Trim();
                DetailList.Add(Detail);
            }
        }
    }
}
