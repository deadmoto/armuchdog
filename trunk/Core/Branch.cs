using System.Collections.Generic;
using System.Data.SqlClient;

namespace Contracts.NET
{
    /// <summary>
    /// Represents branch data
    /// </summary>
    public struct BranchData
    {
        public int Id;
        public string Name;
    }

    /// <summary>
    /// Provides access to branch list
    /// </summary>
    static class Branch
    {
        public static List<BranchData> BranchList = new List<BranchData>();

        /// <summary>
        /// Returns branch by Id
        /// </summary>
        public static BranchData Find(int Id)
        {
            return BranchList.Find(delegate(BranchData Branch) { return Branch.Id == Id; });
        }

        /// <summary>
        /// Retrieves branch list from database
        /// </summary>
        public static void Retrieve()
        {
            BranchList.Clear();
            SqlCommand Command = Connection.GetCommand("SELECT * FROM Region");
            SqlDataReader Reader = Command.ExecuteReader();
            while (Reader.Read())
            {
                BranchData Branch = new BranchData();
                Branch.Id = Reader.GetInt32(Reader.GetOrdinal("FLDID"));
                Branch.Name = Reader.GetString(Reader.GetOrdinal("FLDNAME")).Trim();
                BranchList.Add(Branch);
            }
        }
    }
}
