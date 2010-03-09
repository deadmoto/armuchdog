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
        private static string Password = "5208";
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

        public static void ExecSQL(string SQLText)
        {
            SqlConnection SQLConnection = new SqlConnection(ConnectionString);
            SQLConnection.Open();
            SqlCommand SQLCommand = new SqlCommand(SQLText, SQLConnection);
            SQLCommand.ExecuteNonQuery();
        }

        public static SqlDataReader OpenSQL(string SQLText)
        {
            SqlConnection SQLConnection = new SqlConnection(ConnectionString);
            SQLConnection.Open();
            SqlCommand SQLCommand = new SqlCommand(SQLText, SQLConnection);
            return SQLCommand.ExecuteReader();
        }
    }
}
