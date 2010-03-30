using System.Data.SqlClient;

namespace Contracts.NET
{
    /// <summary>
    /// Provides connection to SQL Server
    /// </summary>
    static class Connection
    {
        private static string DataSource = "(local)";
        private static string UserID = "sa";
        private static string Password = "sa";
        private static string InitialCatalog = "Contracts";

        /// <summary>
        /// Returns connection string to SQL Server
        /// </summary>
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

        public static SqlDataReader OpenSQL(string Query)
        {
            SqlConnection Connection = new SqlConnection(ConnectionString);
            Connection.Open();
            SqlCommand SQLCommand = new SqlCommand(Query, Connection);
            return SQLCommand.ExecuteReader();
        }
    }
}
