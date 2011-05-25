using System.Collections.Generic;
using System.Data.SqlClient;
using Contracts.NET.Core;
using Contracts.NET.Data;

namespace Contracts.NET
{
    static class Supplier
    {
        public static List<SupplierData> Items = new List<SupplierData>();

        public static SupplierData Find(int Id)
        {
            SupplierData Data = Items.Find(delegate(SupplierData Supplier) { return Supplier.Id == Id; });

            if (Data == null)
            {
                return new SupplierData();
            }
            else
            {
                return Data;
            }
        }

        public static void Fetch()
        {
            SqlCommand Command = Client.GetCommand("SELECT * FROM SupplierDog");
            SqlDataReader Reader = Command.ExecuteReader();

            Items.Clear();

            while (Reader.Read())
            {
                SupplierData Supplier = new SupplierData();

                Supplier.Id = Reader.GetInt32(Reader.GetOrdinal("ID_SUPPLIER"));
                Supplier.Name = Reader.GetString(Reader.GetOrdinal("SUPPLIER")).Trim();

                Items.Add(Supplier);
            }
        }
    }
}
