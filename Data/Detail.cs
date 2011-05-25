using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using Contracts.NET.Core;

namespace Contracts.NET.Data
{
    static class Detail
    {
        public static List<DetailData> Items = new List<DetailData>();

        public static List<DetailData> FindAll(long Id)
        {
            return Items.FindAll(delegate(DetailData Detail) { return Detail.Id == Id; });
        }

        public static void Fetch()
        {
            Items.Clear();
            SqlCommand Command = Client.GetCommand("SELECT * FROM subcontract");
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
                Items.Add(Detail);
            }
        }

        private static string GetDateString(DateTime Date)
        {
            if (Date == DateTime.MinValue)
            {
                return "NULL";
            }
            else
            {
                return "'" + Date.ToString("yyyy-MM-dd") + "'";
            }
        }

        public static void Insert(DetailData Data)
        {
            string CommandText = "INSERT INTO subcontract (id, nomencl, code, subdate, price, report, comment) VALUES ({0}, '{1}', '{2}', {3}, {4}, '{5}', '{6}')";
            CommandText = string.Format(CommandText, Data.Id, Data.Classifier.Id, Data.Opcode.Id, GetDateString(Data.DetailDate), Data.Price, Data.Report, Data.Comment);

            SqlCommand Command = Client.GetCommand(CommandText);
            Command.ExecuteNonQuery();

            Fetch();
        }
    }
}
