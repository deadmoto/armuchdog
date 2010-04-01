using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace Contracts.NET
{
    /// <summary>
    /// Represents Item data
    /// </summary>
    public struct ContractData
    {
        public long Id;
        public string RegistrationNumber;
        public string ContractNumber;
        public DateTime Registered;
        public DateTime Recieved;
        public BranchData Branch;
        public DateTime ValidFrom;
        public DateTime ValidTo;
        public SupplierData Supplier;
        public List<DetailData> DetailList;

        /// <summary>
        /// Returns total price of Item 
        /// </summary>
        public double Price()
        {
            double Result = new double();
            foreach (DetailData Detail in DetailList) { Result += Detail.Price; }
            return Result;
        }

        /// <summary>
        /// Returns Item attributes as object array
        /// </summary>
        public object[] ToArray()
        {
            object[] Result = new object[10];
            Result[0] = Branch.Name;
            Result[1] = Id;
            Result[2] = RegistrationNumber;
            Result[3] = ContractNumber;
            if (!(Recieved == DateTime.MinValue)) { Result[4] = Recieved.ToShortDateString(); }
            if (!(Registered == DateTime.MinValue)) { Result[5] = Registered.ToShortDateString(); }
            if (!(ValidFrom == DateTime.MinValue)) { Result[6] = ValidFrom.ToShortDateString(); }
            if (!(ValidTo == DateTime.MinValue)) { Result[7] = ValidTo.ToShortDateString(); }
            Result[8] = Supplier.Name;
            Result[9] = Price();
            return Result;
        }
    }

    /// <summary>
    /// Provides access to Item list
    /// </summary>
    static class Contract
    {
        public static List<ContractData> ContractList = new List<ContractData>();

        /// <summary>
        /// Returns Item by Id
        /// </summary>
        public static ContractData Find(long Id)
        {
            return ContractList.Find(delegate(ContractData Contract) { return Contract.Id == Id; });
        }

        /// <summary>
        /// Retrieves Item list from database
        /// </summary>
        public static void Retrieve()
        {
            ContractList.Clear();
            SqlCommand Command = Connection.GetCommand("SELECT TOP 100 * FROM ReestrDog");
            SqlDataReader Reader = Command.ExecuteReader();
            while (Reader.Read())
            {
                ContractData Contract = new ContractData();
                Contract.Id = Reader.GetInt64(Reader.GetOrdinal("REGN"));
                Contract.RegistrationNumber = Reader.GetString(Reader.GetOrdinal("registration")).Trim();
                Contract.ContractNumber = Reader.GetString(Reader.GetOrdinal("N_DOG")).Trim();
                if (!Reader.IsDBNull(Reader.GetOrdinal("DATA_DOG")))
                {
                    Contract.ValidFrom = Reader.GetDateTime(Reader.GetOrdinal("DATA_DOG"));
                }
                if (!Reader.IsDBNull(Reader.GetOrdinal("DATA_SROK")))
                {
                    Contract.ValidTo = Reader.GetDateTime(Reader.GetOrdinal("DATA_SROK"));
                }
                if (!Reader.IsDBNull(Reader.GetOrdinal("DATA_POST")))
                {
                    Contract.Recieved = Reader.GetDateTime(Reader.GetOrdinal("DATA_POST"));
                }
                if (!Reader.IsDBNull(Reader.GetOrdinal("DATA_REG")))
                {
                    Contract.Registered = Reader.GetDateTime(Reader.GetOrdinal("DATA_REG"));
                }
                Contract.Branch = Branch.Find(Reader.GetByte(Reader.GetOrdinal("FLDID")));
                if (!Reader.IsDBNull(Reader.GetOrdinal("ID_SUPPLIER")))
                {
                    Contract.Supplier = Supplier.Find(Reader.GetInt32(Reader.GetOrdinal("ID_SUPPLIER")));
                }
                Contract.DetailList = Detail.FindAll(Contract.Id);
                ContractList.Add(Contract);
            }
        }
    }
}
