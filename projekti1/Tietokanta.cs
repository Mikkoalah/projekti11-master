using System;
using System.Collections.Generic;
using System.Text;
using Npgsql;
using System.Text;


namespace projekti1
{
    class Tietokanta
    {
        private const string HOST = "localhost";
        private const string USERNAME = "postgres";
        private const string PASSWORD = "Grespost99";
        private const string DB = "Sarjataulukko";
        private const string CONNECTION_STRING = "Host=" + HOST + ";Username=" + USERNAME + ";Password=" + PASSWORD + ";Database=" + DB;
        // Connection is private and gets opened in the constructor and used in all the db transactions

        static private NpgsqlConnection connection;
        //static private NpgsqlCommand selectAllCars = null;
        static private NpgsqlCommand insertJoukkue = null;
        static private NpgsqlCommand insertOttelu = null;
        static Tietokanta()
        {
            try
            {
                connection = new NpgsqlConnection(CONNECTION_STRING);
                connection.Open(); // Here we open connection
            }
            catch (NpgsqlException ex)
            {
                throw new NpgsqlException($"Yhteyttä tietokantaan ei saatu ({ ex.Message }).");
            }

        }


      

        static public void LisaaJoukkue(Joukkue team)
        {
            using (insertJoukkue = new NpgsqlCommand("INSERT INTO taulukko(joukkue, ottelut, pisteet, tehdytmaalit, päästetytmaalit, maaliero) " +
                "VALUES (@joukkue, @ottelut, @pisteet, @tehdytmaalit, @päästetytmaalit, @maaliero)", connection))
            {
                insertJoukkue.Parameters.AddWithValue("joukkue", team.GetNimi());
               insertJoukkue.Parameters.AddWithValue("ottelut", team.GetOtteluLkm());
               insertJoukkue.Parameters.AddWithValue("pisteet", team.Getpisteet());
                insertJoukkue.Parameters.AddWithValue("tehdytmaalit", team.GetTehdytMaalit());
                insertJoukkue.Parameters.AddWithValue("päästetytmaalit", team.GetPaastetytMaalit());
                insertJoukkue.Parameters.AddWithValue("maaliero", team.GetTehdytMaalit()-team.GetPaastetytMaalit());
                insertJoukkue.ExecuteNonQuery();
            }
        }
        static public void LisaaOttelu(Ottelu match)
        {
            using (insertOttelu = new NpgsqlCommand("INSERT INTO ottelut(koti, vieras, maalitkoti, maalitvieras, voittaja) " +
                "VALUES (@koti, @vieras, @maalitkoti, @maalitvieras, @voittaja)", connection))
            {
                insertOttelu.Parameters.AddWithValue("koti", match.getJoukkue1());
                insertOttelu.Parameters.AddWithValue("vieras", match.getJoukkue2());
                insertOttelu.Parameters.AddWithValue("maalitkoti", match.GetMaalit1());
                insertOttelu.Parameters.AddWithValue("maalitvieras", match.GetMaalit2());
               insertOttelu.Parameters.AddWithValue("voittaja", match.Getvoittaja());
                insertOttelu.ExecuteNonQuery();
            }
        }



       








    }
}
