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
            catch (Exception)
            {
                throw;
            }
            finally
            {
                // Schließen Sie die Verbindung zur Datenbank, unabhängig davon, ob ein Fehler aufgetreten ist oder nicht
                conn.Close();
            }
        }

        public static DataTable GetAlllibrary(string path, string command)
        {
            using var conn = new SqliteConnection("Data Source=" + path);
            conn.Open();

            try
            {
                using var cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = command;

                var data = new DataTable();
                using (var reader = cmd.ExecuteReader())
                {
                    data.Load(reader);
                }
                cmd.Connection.CloseAsync();
                return data;
            }
            catch (Exception)
            {
                conn.CloseAsync();
                throw;
            }
        }

        public static bool isExistiert(string path, string command)
        {
            using var conn = new SqliteConnection("Data Source=" + path);
            conn.Open();
            try
            {
                using var cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = command;

                //cmd.ExecuteNonQuery();
                var result = cmd.ExecuteScalar();

                if (result != null)
                    result = true;
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                conn.Close();
            }
            return false;
        }

        public static void DeleteLibrary(string path, string command)
        {
            using var conn = new SqliteConnection("Data Source=" + path);
            conn.Open();

            try
            {
                using var cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = command;

                cmd.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                conn.Close();
            }
        }

        public static DataTable GetLibraryByName(string path, string command)
        {
            using var conn = new SqliteConnection("Data Source=" + path);
            conn.Open();

            try
            {
                using var cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = command;

                var data = new DataTable();
                using (var reader = cmd.ExecuteReader())
                {
                    data.Load(reader);
                }
                cmd.Connection.CloseAsync();

                return data;
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                conn.Close();
            }
        }
    }
}

