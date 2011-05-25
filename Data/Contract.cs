using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using Contracts.NET.Core;

namespace Contracts.NET.Data
{
    static class Contract
    {
        public static List<ContractData> Items = new List<ContractData>();

        public static int Year = DateTime.Now.Year;
        public static int Quarter = DateTime.Now.Month / 4 + 1;

        public static void Fetch()
        {
            string CommandText = string.Format("SELECT * FROM ReestrDog WHERE DATEPART(year, DATA_DOG) = {0} AND DATEPART(quarter, DATA_DOG) = {1}", Year, Quarter);
            SqlCommand Command = Client.GetCommand(CommandText);
            SqlDataReader Reader = Command.ExecuteReader();

            Items.Clear();

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
                Contract.Department = Department.Find(Reader.GetByte(Reader.GetOrdinal("FLDID")));
                if (!Reader.IsDBNull(Reader.GetOrdinal("ID_SUPPLIER")))
                {
                    Contract.Supplier = Supplier.Find(Reader.GetInt32(Reader.GetOrdinal("ID_SUPPLIER")));
                }
                Contract.Items = Detail.FindAll(Contract.Id);
                Items.Add(Contract);
            }
        }

        public static ContractData Find(long Id)
        {
            return Items.Find(delegate(ContractData Item) { return Item.Id == Id; });
        }

        public static string GetDateString(DateTime Date)
        {
            if (Date == DateTime.MinValue)
            {
                return "NULL";
            }
            else
            {
                return "'" + Date.ToString("yyyy-MM-dd") + "'";
            }
        }

        public static void Insert(ContractData Data)
        {
            string CommandText = "INSERT INTO ReestrDog (registration, N_DOG, DATA_REG, DATA_POST, FLDID, DATA_DOG, DATA_SROK, ID_SUPPLIER) VALUES ('{0}', '{1}', {2}, {3}, {4}, {5}, {6}, {7})";
            CommandText = string.Format(CommandText, Data.RegistrationNumber, Data.ContractNumber, GetDateString(Data.Registered), GetDateString(Data.Recieved), Data.Department.Id, GetDateString(Data.ValidFrom), GetDateString(Data.ValidTo), Data.Supplier.Id);

            SqlCommand Command = Client.GetCommand(CommandText);
            Command.ExecuteNonQuery();

            CommandText = "SELECT IDENT_CURRENT('ReestrDog')";
            Command.CommandText = CommandText;
            int A = int.Parse(Command.ExecuteScalar().ToString());

            foreach (DetailData D in Data.Items)
            {
                D.Id = A;
                Detail.Insert(D);
            }

            Fetch();
        }

        public static void Update(ContractData Data)
        {
            string CommandText = "UPDATE ReestrDog SET registration = '{1}', N_DOG = '{2}', DATA_REG = {3}, DATA_POST = {4}, DATA_DOG = {5}, DATA_SROK = {6}, ID_SUPPLIER = {7} WHERE REGN = {0}";
            CommandText = string.Format(CommandText, Data.Id, Data.RegistrationNumber, Data.ContractNumber, GetDateString(Data.Registered), GetDateString(Data.Recieved), GetDateString(Data.ValidFrom), GetDateString(Data.ValidTo), Data.Supplier.Id);

            SqlCommand Command = Client.GetCommand(CommandText);
            Command.ExecuteNonQuery();

            CommandText = string.Format("DELETE FROM subcontract WHERE ID = {0}", Data.Id);
            Command = Client.GetCommand(CommandText);
            Command.ExecuteNonQuery();

            foreach (DetailData D in Data.Items)
            {
                D.Id = Data.Id;
                Detail.Insert(D);
            }

            Fetch();
        }

        public static void Delete(ContractData Data)
        {
        }
    }
}
