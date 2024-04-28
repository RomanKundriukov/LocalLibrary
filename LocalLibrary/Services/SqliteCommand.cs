using Microsoft.Data.SqlClient;
using System.Data;

namespace LocalLibrary.Services
{
    public static class SqliteCommand
    {
        private static SqlConnection Connection(string path)
        {
            try
            {
                var conn = new SqlConnection(path);
                conn.Open();
                return conn;
            }
            catch (Exception)
            {
                throw;
            }
        }

        public static void SetParhDb(string path, string nameDb, string command)
        {
            using var cmd = new SqlCommand()
            {
                Connection = Connection(path),
                CommandType = CommandType.Text,
                CommandText = command
            };

            cmd.Connection.Close();
        }
    }
}
