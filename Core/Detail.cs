using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Contracts.NET
{
    /// <summary>
    /// Represents Item detail data
    /// </summary>
    public struct DetailData
    {
        public long Id;
        public string Classification;
        public string Opcode;
        public DateTime SubDate;
        public double Price;
        public bool Report;
        public string Comment;

        /// <summary>
        /// Returns array of fields
        /// </summary>
        public object[] ToArray()
        {
            object[] Result = new object[5];
            Result[0] = SubDate.ToShortDateString();
            Result[1] = Classification;
            Result[2] = Opcode;
            Result[3] = Comment;
            Result[4] = Price;
            return Result;
        }
    }

    /// <summary>
    /// Provides Item detail list
    /// </summary>
    static class Detail
    {
        public static List<DetailData> DetailList = new List<DetailData>();

        /// <summary>
        /// Returns Item detail list by Id
        /// </summary>
        public static List<DetailData> FindAll(long Id)
        {
            return DetailList.FindAll(delegate(DetailData Detail) { return Detail.Id == Id; });
        }

        /// <summary>
        /// Retrieves contracts detail list from database
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
                Detail.Classification = Reader.GetString(Reader.GetOrdinal("nomencl")).Trim();
                Detail.Opcode = Reader.GetString(Reader.GetOrdinal("code")).Trim();
                if (!Reader.IsDBNull(Reader.GetOrdinal("subdate")))
                {
                    Detail.SubDate = Reader.GetDateTime(Reader.GetOrdinal("subdate"));
                }
                Detail.Price = Reader.GetDouble(Reader.GetOrdinal("price"));
                Detail.Report = Reader.GetBoolean(Reader.GetOrdinal("report"));
                Detail.Comment = Reader.GetString(Reader.GetOrdinal("comment")).Trim();
                DetailList.Add(Detail);
            }
        }
    }
}
