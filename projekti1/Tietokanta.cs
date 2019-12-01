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
        static private NpgsqlConnection connection;
        static private NpgsqlCommand insertJoukkue = null;
        static private NpgsqlCommand insertOttelu = null;
        static private NpgsqlCommand insertPelaajat = null;
        //   static private NpgsqlCommand selectTaulukko = null;

        static Tietokanta()
        {
            try
            {
                connection = new NpgsqlConnection(CONNECTION_STRING);
                connection.Open();
            }
            catch (NpgsqlException ex)
            {
                throw new NpgsqlException($"Yhteyttä tietokantaan ei saatu ({ ex.Message }).");
            }

        }
        // LISÄTÄÄN JOUKKUEIDEN TIEDOT TIETOKANNAN TAULUKKOON
        static public void LisaaJoukkue(Joukkue team)
        {
            using (insertJoukkue = new NpgsqlCommand("INSERT INTO taulukko(joukkue, o, v3, v2, h1, h0, tm , pm, me, p) " +
                "VALUES (@joukkue, @o, @v3, @v2, @h1, @h0, @tm,@pm, @me, @p)", connection))
            {
                insertJoukkue.Parameters.AddWithValue("joukkue", team.GetNimi());
                insertJoukkue.Parameters.AddWithValue("o", team.GetOtteluLkm());
                insertJoukkue.Parameters.AddWithValue("v3", team.Get3pVoitot());
                insertJoukkue.Parameters.AddWithValue("v2", team.Get2pVoitot());
                insertJoukkue.Parameters.AddWithValue("h1", team.Get1ptappiot());
                insertJoukkue.Parameters.AddWithValue("h0", team.Get0ptappiot());
                insertJoukkue.Parameters.AddWithValue("tm", team.GetTehdytMaalit());
                insertJoukkue.Parameters.AddWithValue("pm", team.GetPaastetytMaalit());
                insertJoukkue.Parameters.AddWithValue("me", team.GetTehdytMaalit() - team.GetPaastetytMaalit());
                insertJoukkue.Parameters.AddWithValue("p", team.Getpisteet());
                insertJoukkue.ExecuteNonQuery();
            }
        }

        //LISÄTÄÄN PELATUT OTTELUT TIETOKANNAN TAULUKKOON
        static public void LisaaOttelu(Ottelu match)
        {
            using (insertOttelu = new NpgsqlCommand("INSERT INTO ottelut(ottelu_id , koti, vieras, maalitkoti, maalitvieras, voittaja, päivämäärä) " +
                "VALUES (@ottelu_id,@koti, @vieras, @maalitkoti, @maalitvieras, @voittaja, @päivämäärä)", connection))
            {
                insertOttelu.Parameters.AddWithValue("ottelu_id", match.getOtteluID());
                insertOttelu.Parameters.AddWithValue("koti", match.getJoukkue1());
                insertOttelu.Parameters.AddWithValue("vieras", match.getJoukkue2());

                //JOS JATKOAIKAVOITTAJA ON KOTIJOUKKUE
                if (match.getJatkoaikavoittaja() == match.getJoukkue1())
                {
                    insertOttelu.Parameters.AddWithValue("maalitkoti", match.GetMaalit1() + 1);
                    insertOttelu.Parameters.AddWithValue("maalitvieras", match.GetMaalit2());
                    insertOttelu.Parameters.AddWithValue("voittaja", match.getJatkoaikavoittaja());

                }
                //JOS JATKOAIKAVOITTAJA ON VIERASJOUKKUE
                if ((match.getJatkoaikavoittaja() == match.getJoukkue2()))
                {
                    insertOttelu.Parameters.AddWithValue("maalitkoti", match.GetMaalit1());
                    insertOttelu.Parameters.AddWithValue("maalitvieras", match.GetMaalit2() + 1);
                    insertOttelu.Parameters.AddWithValue("voittaja", match.getJatkoaikavoittaja());
                }

                else
                {
                    insertOttelu.Parameters.AddWithValue("maalitkoti", match.GetMaalit1());
                    insertOttelu.Parameters.AddWithValue("maalitvieras", match.GetMaalit2());
                    insertOttelu.Parameters.AddWithValue("voittaja", match.Getvoittaja());
                    // insertOttelu.Parameters.AddWithValue("voittaja", match.Getvoittaja());
                }
                insertOttelu.Parameters.AddWithValue("päivämäärä", match.Getottelupvm());
                insertOttelu.ExecuteNonQuery();
            }
        }

        //LISÄTÄÄN PELAAJAN KAIKKITIEDOT TIETOKANTA TAULUKKOON
        static public void LisaaPelaajat(Pelaaja player)
        {
            using (insertPelaajat = new NpgsqlCommand("INSERT INTO pelaajalista(pelaajaID, joukkue , pelinumero, etunimi, sukunimi, syntymävuosi, pelipaikka) " +
                "VALUES (@pelaajaID,@joukkue,@pelinumero, @etunimi, @sukunimi, @syntymävuosi, @pelipaikka)", connection))
            {
                insertPelaajat.Parameters.AddWithValue("pelaajaID", player.getPelaajaID());
                insertPelaajat.Parameters.AddWithValue("joukkue", player.getPeJoukkue());
                insertPelaajat.Parameters.AddWithValue("pelinumero", player.getPelinumero());
                insertPelaajat.Parameters.AddWithValue("etunimi", player.getEtunimi());
                insertPelaajat.Parameters.AddWithValue("sukunimi", player.getSukunimi());
                insertPelaajat.Parameters.AddWithValue("syntymävuosi", player.getIka());
                insertPelaajat.Parameters.AddWithValue("pelipaikka", player.GETpelipaikka());
                insertPelaajat.ExecuteNonQuery();
            }
        }

        //YRITYS LISÄTÄ TOIMINTO JOLLA TIETOKANNASTA HAETAAN TIETOJA, MUTTA SITÄ EN SAANUT TOIMIMAAN TÄSSÄ AIKATAULUSSA, MUTTA AION SEN VIELÄ LAITTAA TOIMIMAAN

        //static public List<Joukkue> HaeJoukkueet()
        //{
        //    List<Joukkue> list = new List<Joukkue>();
        //    using (selectTaulukko = new NpgsqlCommand("SELECT joukkue FROM taulukko", connection))
        //    {
        //        selectTaulukko.Prepare(); // Prepare the select query that gets all cars from the database

        //        using (NpgsqlDataReader results = selectTaulukko.ExecuteReader())
        //        {
        //            bool success;

        //            while (results.Read())
        //            {
        //                list.Add(new Joukkue(results.GetString(0), out success));

        //            }
        //        }
        //    }
        //    return list;
        //}


    }
}
