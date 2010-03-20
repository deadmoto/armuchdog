using System.Collections.Generic;
using System.Data.SqlClient;

namespace Contracts.NET
{
    public class SQLTables
    {
        public List<Contract> Contracts;
        public List<Provider> Providers;
        public int ContractsTotalCount;
        public int ContractsFilterCount;
        public double ContractsTotalSum;
        public double ContractsFilterSum;

        private Provider FindProvider(int Id)
        {
            foreach (Provider Provider in Providers)
            {
                if (Provider.Id == Id)
                {
                    return Provider;
                }
            }
            return new Provider();
        }

        public void GetStatistics()
        {
            SqlDataReader Reader = Connection.OpenSQL("SELECT Count(REGN) as ContractsTotalCount FROM ReestrDog");
            Reader.Read();
            ContractsTotalCount = Reader.GetInt32(Reader.GetOrdinal("ContractsTotalCount"));
            Reader.Close();
            Reader = Connection.OpenSQL("SELECT SUM(price) AS ContractsTotalSum FROM subcontract");
            Reader.Read();
            ContractsTotalSum = Reader.GetDouble(Reader.GetOrdinal("ContractsTotalSum"));
        }

        public void GetProviders()
        {
            Providers = new List<Provider>();
            SqlDataReader Reader = Connection.OpenSQL("SELECT * FROM SupplierDog");
            while (Reader.Read())
            {
                Provider Provider = new Provider();
                Provider.Id = Reader.GetInt32(Reader.GetOrdinal("ID_SUPPLIER"));
                Provider.Name = Reader.GetString(Reader.GetOrdinal("SUPPLIER")).Trim();
                Providers.Add(Provider);
            }
            Reader.Close();
            Reader.Dispose();
        }

        public void GetContracts()
        {
            double FilterSum = 0;
            Contracts = new List<Contract>();
            SqlDataReader Reader = Connection.OpenSQL("SELECT * FROM ReestrDog");
            while (Reader.Read())
            {
                Contract Contract = new Contract();
                Contract.Id = Reader.GetInt64(Reader.GetOrdinal("REGN"));
                Contract.RegNum = Reader.GetString(Reader.GetOrdinal("registration"));
                Contract.ConNum = Reader.GetString(Reader.GetOrdinal("N_DOG"));
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
                Contract.Region = Reader.GetByte(Reader.GetOrdinal("FLDID"));
                if (!Reader.IsDBNull(Reader.GetOrdinal("ID_SUPPLIER")))
                {
                    Contract.Provider = FindProvider(Reader.GetInt32(Reader.GetOrdinal("ID_SUPPLIER")));
                }
                if (!Reader.IsDBNull(Reader.GetOrdinal("Sum_Dog")))
                {
                }
                FilterSum += Contract.Sum;
                Contracts.Add(Contract);
            }
            ContractsFilterCount = Contracts.Count;
            ContractsFilterSum = FilterSum;
            Reader.Close();
        }

        public void AddProvider(string Name)
        {
            Connection.ExecSQL("INSERT INTO SupplierDog (SUPPLIER) VALUES ('" + Name.ToString() + "')");
            GetProviders();
        }

        public SQLTables()
        {
            GetStatistics();
            GetProviders();
            GetContracts();
        }
    }
}
