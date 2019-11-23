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
            using (insertJoukkue = new NpgsqlCommand("INSERT INTO taulukko(joukkue, ottelut, pisteet) " +
                "VALUES (@joukkue, @ottelut, @pisteet)", connection))
            {
                insertJoukkue.Parameters.AddWithValue("joukkue", team.GetNimi());
               insertJoukkue.Parameters.AddWithValue("ottelut", team.GetOtteluLkm());
               insertJoukkue.Parameters.AddWithValue("pisteet", team.Getpisteet());
                insertJoukkue.ExecuteNonQuery();
            }
        }


        //static public void LisaaOttelu(Ottelu ottelu)
        //{
        //    using (insertJoukkue = new NpgsqlCommand("INSERT INTO ottelut(koti, vieras, maalitkoti, maalitvieras) " +
        //        "VALUES (@koti, @vieras, @maalitkoti, @maalitvieras)", connection))
        //    {
        //        insertOttelu.Parameters.AddWithValue("koti", ottelu.getJoukkue1());
        //        insertOttelu.Parameters.AddWithValue("vieras", ottelu.getJoukkue2());
        //        insertOttelu.Parameters.AddWithValue("maalitkoti", ottelu.GetMaalit1());
        //        insertOttelu.Parameters.AddWithValue("maalitvieras", ottelu.GetMaalit2());
        //        insertOttelu.ExecuteNonQuery();
        //    }
        //}











    }
}
