using System.Collections.Generic;
using System.Data.SqlClient;

namespace Contracts.NET
{
    public struct NCEAData
    {
        public string Id;
        public string Name;
    }

    static class NCEA
    {
        public static List<NCEAData> NCEAList = new List<NCEAData>();

        public static void Retrieve()
        {
            NCEAList.Clear();
            SqlCommand Command = Connection.GetCommand("SELECT * FROM NomenclDog");
            SqlDataReader Reader = Command.ExecuteReader();
            while (Reader.Read())
            {
                NCEAData NCEA = new NCEAData();
                NCEA.Id = Reader.GetString(Reader.GetOrdinal("id_nomencl")).Trim();
                NCEA.Name = Reader.GetString(Reader.GetOrdinal("NAME")).Trim();
                NCEAList.Add(NCEA);
            }
        }
    }
}
