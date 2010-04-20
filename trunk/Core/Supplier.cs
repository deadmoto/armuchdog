using System.Collections.Generic;
using System.Data.SqlClient;

namespace Contracts.NET
{
    /// <summary>
    /// Represents supplier data
    /// </summary>
    public struct SupplierData
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
    /// Provides access to supplier list
    /// </summary>
    static class Supplier
    {
        public static List<SupplierData> SupplierList = new List<SupplierData>();

        /// <summary>
        /// Returns supplier by Id
        /// </summary>
        public static SupplierData Find(int Id)
        {
            return SupplierList.Find(delegate(SupplierData Supplier) { return Supplier.Id == Id; });
        }

        /// <summary>
        /// Retrieves supplier list from database
        /// </summary>
        public static void Retrieve()
        {
            SupplierList.Clear();
            SqlCommand Command = Connection.GetCommand("SELECT * FROM SupplierDog");
            SqlDataReader Reader = Command.ExecuteReader();
            while (Reader.Read())
            {
                SupplierData Supplier = new SupplierData();
                Supplier.Id = Reader.GetInt32(Reader.GetOrdinal("ID_SUPPLIER"));
                Supplier.Name = Reader.GetString(Reader.GetOrdinal("SUPPLIER")).Trim();
                SupplierList.Add(Supplier);
            }
        }
    }
}
