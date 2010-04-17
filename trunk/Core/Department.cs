using System.Collections.Generic;
using System.Data.SqlClient;

namespace Contracts.NET
{
    /// <summary>
    /// Represents department data
    /// </summary>
    public struct DepartmentData
    {
        public int Id;
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
    /// Provides access to department list
    /// </summary>
    static class Department
    {
        public static List<DepartmentData> DepartmentList = new List<DepartmentData>();

        /// <summary>
        /// Returns department by Id
        /// </summary>
        public static DepartmentData Find(int Id)
        {
            return DepartmentList.Find(delegate(DepartmentData Item) { return Item.Id == Id; });
        }

        /// <summary>
        /// Retrieves department list from database
        /// </summary>
        public static void Retrieve()
        {
            DepartmentList.Clear();
            SqlCommand Command = Connection.GetCommand("SELECT * FROM Region");
            SqlDataReader Reader = Command.ExecuteReader();
            while (Reader.Read())
            {
                DepartmentData Department = new DepartmentData();
                Department.Id = Reader.GetInt32(Reader.GetOrdinal("FLDID"));
                Department.Name = Reader.GetString(Reader.GetOrdinal("FLDNAME")).Trim();
                DepartmentList.Add(Department);
            }
        }
    }
}
