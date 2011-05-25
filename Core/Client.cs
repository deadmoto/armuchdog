using System.Data.SqlClient;

namespace Contracts.NET.Core
{
    static class Client
    {
        private static string DataSource = "OPAO-BEREZHNOY";
        private static string UserID = "sa";
        private static string Password = "dbo";
        private static string InitialCatalog = "Contracts";

        private static string ConnectionString
        {
            get
            {
                SqlConnectionStringBuilder StringBuilder = new SqlConnectionStringBuilder();
                StringBuilder.DataSource = DataSource;
                StringBuilder.UserID = UserID;
                StringBuilder.Password = Password;
                StringBuilder.InitialCatalog = InitialCatalog;
                return StringBuilder.ConnectionString;
            }
        }

        public static SqlCommand GetCommand(string Query)
        {
            SqlConnection Connection = new SqlConnection(ConnectionString);
            Connection.Open();
            SqlCommand Command = new SqlCommand(Query, Connection);
            return Command;
        }
    }
}
