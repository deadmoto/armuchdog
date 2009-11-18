using System.Data.SqlClient;
using Contracts.NET.Properties;

namespace Contracts.NET
{
    static class SQLServer
    {
        public static SqlDataReader SQLExecute(string SQLText)
        {
            SqlConnection SQLConnection = new SqlConnection(Settings.Default.ConnectionString.ToString());
            SQLConnection.Open();
            SqlCommand SQLCommand = new SqlCommand(SQLText, SQLConnection);
            return SQLCommand.ExecuteReader();
        }
    }
}
