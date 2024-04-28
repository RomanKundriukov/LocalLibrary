using Microsoft.Data.Sqlite;
using System.Data;

namespace LocalLibrary.Services
{
    public static class SqliteCommand
    {
        private static SqliteConnection Connection(string path)
        {
            try
            {
                var conn = new SqliteConnection(path);
                conn.Open();
                return conn;
            }
            catch (Exception)
            {
                throw;
            }
        }

        //public static void SetParhDb(string path, string command)
        //{
        //    using var cmd = new SqlCommand()
        //    {
        //        Connection = Connection(path),
        //        CommandType = CommandType.Text,
        //        CommandText = command
        //    };

        //    cmd.Connection.Close();
        //}
        public static void SetPathDb(string path, string command)
        {
            // Erstellen Sie eine Verbindung zur SQLite-Datenbank
            using var conn = new SqliteConnection("Data Source=" + path);

            // Öffnen Sie die Verbindung zur Datenbank
            conn.Open();

            try
            {
                // Erstellen Sie einen Befehl für die SQLite-Verbindung
                using var cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = command;

                // Führen Sie den Befehl aus
                cmd.ExecuteNonQuery();
            }
            finally
            {
                // Schließen Sie die Verbindung zur Datenbank, unabhängig davon, ob ein Fehler aufgetreten ist oder nicht
                conn.Close();
            }
        }
    }
}
