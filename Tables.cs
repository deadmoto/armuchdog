using System.Collections.Generic;
using System.Data.SqlClient;

namespace Contracts.NET
{
    public class SQLTables
    {
        public List<SQLContract> Contracts;
        public List<SQLRegion> Regions;
        public List<SQLProvider> Providers;
        public int ContractsTotalCount;
        public int ContractsFilterCount;
        public double ContractsTotalSum;
        public double ContractsFilterSum;

        private SQLRegion FindRegion(short Id)
        {
            foreach (SQLRegion Region in Regions)
            {
                if (Region.Id == Id)
                {
                    return Region;
                }
            }
            return new SQLRegion();
        }

        private SQLProvider FindProvider(int Id)
        {
            foreach (SQLProvider Provider in Providers)
            {
                if (Provider.Id == Id)
                {
                    return Provider;
                }
            }
            return new SQLProvider();
        }

        public void GetStatistics()
        {
            SqlDataReader Reader = SQLServer.SQLExecute("SELECT Count(REGN) as ContractsTotalCount FROM ReestrDog");
            Reader.Read();
            ContractsTotalCount = Reader.GetInt32(Reader.GetOrdinal("ContractsTotalCount"));
            Reader.Close();
            Reader = SQLServer.SQLExecute("SELECT SUM(price) AS ContractsTotalSum FROM subcontract");
            Reader.Read();
            ContractsTotalSum = Reader.GetDouble(Reader.GetOrdinal("ContractsTotalSum"));
        }

        public void GetRegions()
        {
            Regions = new List<SQLRegion>();
            SqlDataReader Reader = SQLServer.SQLExecute("SELECT * FROM Region");
            while (Reader.Read())
            {
                SQLRegion Region = new SQLRegion();
                Region.Id = Reader.GetByte(Reader.GetOrdinal("FLDID"));
                Region.Name = Reader.GetString(Reader.GetOrdinal("FLDNAME")).Trim();
                Regions.Add(Region);
            }
            Reader.Close();
            Reader.Dispose();
        }

        public void GetProviders()
        {
            Providers = new List<SQLProvider>();
            SqlDataReader Reader = SQLServer.SQLExecute("SELECT * FROM SupplierDog");
            while (Reader.Read())
            {
                SQLProvider Provider = new SQLProvider();
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
            Contracts = new List<SQLContract>();
            SqlDataReader Reader = SQLServer.SQLExecute("SELECT * FROM ReestrDog");
            while (Reader.Read())
            {
                SQLContract Contract = new SQLContract();
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
                Contract.Region = FindRegion(Reader.GetByte(Reader.GetOrdinal("FLDID")));
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

        public SQLTables()
        {
            GetStatistics();
            GetRegions();
            GetProviders();
            GetContracts();
        }
    }
}
