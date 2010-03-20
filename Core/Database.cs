using System.Collections.Generic;
using System.Data.SqlClient;

namespace Contracts.NET
{
    /// <summary>
    /// Provides 
    /// </summary>
    static class Database
    {
        public static Dictionary<int, Region> RegionList = GetRegionList();

        public static void Refresh()
        {
        }

        /// <summary>
        /// Returns region Id-Name dictionary 
        /// </summary>
        private static Dictionary<int, Region> GetRegionList()
        {
            Dictionary<int, Region> RegionList = new Dictionary<int, Region>();
            SqlDataReader Reader = Connection.OpenSQL("SELECT * FROM Region");
            while (Reader.Read())
            {
                Region Region = new Region();
                Region.Id = Reader.GetInt32(Reader.GetOrdinal("FLDID"));
                Region.Name = Reader.GetString(Reader.GetOrdinal("FLDNAME")).Trim();
                RegionList.Add(Reader.GetInt32(Reader.GetOrdinal("FLDID")), Region);
            }
            return RegionList;
        }
    }
}
