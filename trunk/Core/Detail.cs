using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Contracts.NET
{
    /// <summary>
    /// Represents contract detail data
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
    }

    /// <summary>
    /// Provides contract detail list
    /// </summary>
    static class Detail
    {
        public static List<DetailData> DetailList = new List<DetailData>();

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
