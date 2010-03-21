using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Contracts.NET
{
    /// <summary>
    /// Represents contract data
    /// </summary>
    public struct ContractData
    {
        public long Id;
        public string RegistrationNumber;
        public string ContractNumber;
        public DateTime RegDate;
        public DateTime RecDate;
        public BranchData Branch;
        public DateTime ConDate;
        public DateTime ExpDate;
        public SupplierData Supplier;
        public float Sum;
    }

    /// <summary>
    /// Provides access to contract list
    /// </summary>
    static class Contract
    {
        public static List<ContractData> ContractList = new List<ContractData>();

        /// <summary>
        /// Returns contract by Id
        /// </summary>
        public static ContractData Find(long Id)
        {
            return ContractList.Find(delegate(ContractData Contract) { return Contract.Id == Id; });
        }

        /// <summary>
        /// Retrieves contract list from database
        /// </summary>
        public static void Retrieve()
        {
            ContractList.Clear();
            SqlCommand Command = Connection.GetCommand("SELECT * FROM ReestrDog");
            SqlDataReader Reader = Command.ExecuteReader();
            while (Reader.Read())
            {
                ContractData Contract = new ContractData();
                Contract.Id = Reader.GetInt64(Reader.GetOrdinal("REGN"));
                Contract.RegistrationNumber = Reader.GetString(Reader.GetOrdinal("registration"));
                Contract.ContractNumber = Reader.GetString(Reader.GetOrdinal("N_DOG"));
                if (!Reader.IsDBNull(Reader.GetOrdinal("DATA_DOG")))
                {
                    Contract.ConDate = Reader.GetDateTime(Reader.GetOrdinal("DATA_DOG"));
                }
                if (!Reader.IsDBNull(Reader.GetOrdinal("DATA_SROK")))
                {
                    Contract.ExpDate = Reader.GetDateTime(Reader.GetOrdinal("DATA_SROK"));
                }
                if (!Reader.IsDBNull(Reader.GetOrdinal("DATA_POST")))
                {
                    Contract.RecDate = Reader.GetDateTime(Reader.GetOrdinal("DATA_POST"));
                }
                if (!Reader.IsDBNull(Reader.GetOrdinal("DATA_REG")))
                {
                    Contract.RegDate = Reader.GetDateTime(Reader.GetOrdinal("DATA_REG"));
                }
                Contract.Branch = Branch.Find(Reader.GetByte(Reader.GetOrdinal("FLDID")));
                if (!Reader.IsDBNull(Reader.GetOrdinal("ID_SUPPLIER")))
                {
                    Contract.Supplier = Supplier.Find(Reader.GetInt32(Reader.GetOrdinal("ID_SUPPLIER")));
                }
                ContractList.Add(Contract);
            }
        }
    }
}
