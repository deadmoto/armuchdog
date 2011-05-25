using System.Collections.Generic;
using System.Data.SqlClient;
using Contracts.NET.Core;

namespace Contracts.NET.Data
{
    static class Department
    {
        public static List<DepartmentData> DepartmentList = new List<DepartmentData>();

        public static void Fetch()
        {
            DepartmentList.Clear();
            SqlCommand Command = Client.GetCommand("SELECT * FROM Region");
            SqlDataReader Reader = Command.ExecuteReader();
            while (Reader.Read())
            {
                DepartmentData Department = new DepartmentData();
                Department.Id = Reader.GetInt32(Reader.GetOrdinal("FLDID"));
                Department.Name = Reader.GetString(Reader.GetOrdinal("FLDNAME")).Trim();
                DepartmentList.Add(Department);
            }
        }

        public static DepartmentData Find(int Id)
        {
            return DepartmentList.Find(delegate(DepartmentData Item) { return Item.Id == Id; });
        }
    }
}
