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
        public DateTime RegDate;
        public DateTime RecDate;
        public BranchData Branch;
        public DateTime ConDate;
        public DateTime ExpDate;
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
            if (!(RecDate == DateTime.MinValue)) { Result[4] = RecDate.ToShortDateString(); }
            if (!(RegDate == DateTime.MinValue)) { Result[5] = RegDate.ToShortDateString(); }
            if (!(ConDate == DateTime.MinValue)) { Result[6] = ConDate.ToShortDateString(); }
            if (!(ExpDate == DateTime.MinValue)) { Result[7] = ExpDate.ToShortDateString(); }
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

        public static void Fill()
        {
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
                Contract.DetailList = Detail.FindAll(Contract.Id);
                ContractList.Add(Contract);
            }
        }
    }
}
