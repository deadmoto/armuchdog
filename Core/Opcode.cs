using System.Collections.Generic;
using System.Data.SqlClient;
using Contracts.NET.Core;

namespace Contracts.NET
{
    /// <summary>
    /// Represents opcode data
    /// </summary>
    public struct OpcodeData
    {
        public string Id;
        public string Name;

        /// <summary>
        /// Returns array of fields
        /// </summary>
        public object[] ToArray()
        {
            object[] Result = new object[2];
            Result[0] = Id;
            Result[1] = Name;
            return Result;
        }
    }

    /// <summary>
    /// Provides opcode list
    /// </summary>
    static class Opcode
    {
        public static List<OpcodeData> OpcodeList = new List<OpcodeData>();

        /// <summary>
        /// Returns opcode by Id
        /// </summary>
        public static OpcodeData Find(string Id)
        {
            return OpcodeList.Find(delegate(OpcodeData Item) { return Item.Id == Id; });
        }

        /// <summary>
        /// Retrieves opcode list from database
        /// </summary>
        public static void Fetch()
        {
            OpcodeList.Clear();
            SqlCommand Command = Client.GetCommand("SELECT * FROM ArticleDog");
            SqlDataReader Reader = Command.ExecuteReader();
            while (Reader.Read())
            {
                OpcodeData Item = new OpcodeData();
                Item.Id = Reader.GetInt64(Reader.GetOrdinal("COSGU")).ToString();
                Item.Name = Reader.GetString(Reader.GetOrdinal("NAME_ARTIC")).Trim();
                OpcodeList.Add(Item);
            }
        }
    }
}
