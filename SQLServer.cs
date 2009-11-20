using System.Data.SqlClient;
using Contracts.NET.Properties;

namespace Contracts.NET
{
    static class SQLServer
    {
        public static void SQLExecute(string SQLText)
        {
            SqlConnection SQLConnection = new SqlConnection(Settings.Default.ConnectionString.ToString());
            SQLConnection.Open();
            SqlCommand SQLCommand = new SqlCommand(SQLText, SQLConnection);
            SQLCommand.ExecuteNonQuery();
        }

        public static SqlDataReader SQLOpen(string SQLText)
        {
            SqlConnection SQLConnection = new SqlConnection(Settings.Default.ConnectionString.ToString());
            SQLConnection.Open();
            SqlCommand SQLCommand = new SqlCommand(SQLText, SQLConnection);
            return SQLCommand.ExecuteReader();
        }
    }
}
