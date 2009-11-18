using System.Collections.Generic;
using System.Data.SqlClient;

namespace Contracts.NET
{
    public class SQLTables
    {
        public List<SQLContract> Contracts;
        public List<SQLRegion> Regions;

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
        }

        public void GetContracts()
        {
            Contracts = new List<SQLContract>();
            SqlDataReader Reader = SQLServer.SQLExecute("SELECT * FROM ReestrDog");
            while (Reader.Read())
            {
                SQLContract Contract = new SQLContract();
                Contract.REGN = Reader.GetInt64(Reader.GetOrdinal("REGN"));
                Contract.registration = Reader.GetString(Reader.GetOrdinal("registration"));
                Contract.N_DOG = Reader.GetString(Reader.GetOrdinal("N_DOG"));
                if (!Reader.IsDBNull(Reader.GetOrdinal("DATA_REG")))
                {
                    Contract.DATA_REG = Reader.GetDateTime(Reader.GetOrdinal("DATA_REG"));
                }
                if (!Reader.IsDBNull(Reader.GetOrdinal("DATA_POST")))
                {
                    Contract.DATA_POST = Reader.GetDateTime(Reader.GetOrdinal("DATA_POST"));
                }
                Contract.Region = FindRegion(Reader.GetByte(Reader.GetOrdinal("FLDID")));
                Contracts.Add(Contract);
            }
            Reader.Close();
        }

        public SQLTables()
        {
            GetRegions();
            GetContracts();
        }
    }   
}
