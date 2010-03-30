using System.Collections.Generic;
using System.Data.SqlClient;

namespace Contracts.NET
{
    public struct TCGOData
    {
        public string Id;
        public string Name;
    }

    static class TCGO
    {
        public static List<TCGOData> TCGOList = new List<TCGOData>();

        public static void Retrieve()
        {
            TCGOList.Clear();
            SqlCommand Command = Connection.GetCommand("SELECT * FROM ArticleDog");
            SqlDataReader Reader = Command.ExecuteReader();
            while (Reader.Read())
            {
                TCGOData TCGO = new TCGOData();
                TCGO.Id = Reader.GetInt64(Reader.GetOrdinal("COSGU")).ToString();
                TCGO.Name = Reader.GetString(Reader.GetOrdinal("NAME_ARTIC")).Trim();
                TCGOList.Add(TCGO);
            }
        }
    }
}
