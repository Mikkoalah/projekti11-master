using System;
using System.Collections.Generic;
using System.Text;

namespace projekti1
{
    class Pelaaja
    {
        private string _joukkue;
        private int _pelinumero;
        private string _etunimi;
        private string _sukunimi;
        private int _syntymavuosi;
        private string _pelipaikka;
        private int _pelaajaID;



        public Pelaaja(int pelaajaID, string joukkue, int pelinumero, string etunimi, string sukunimi, int syntymavuosi, string pelipaikka)
        {
            _pelaajaID = pelaajaID;
            _joukkue = joukkue;
            _pelinumero = pelinumero;
            _etunimi = etunimi;
            _sukunimi = sukunimi;
            _syntymavuosi = syntymavuosi;
            _pelipaikka = pelipaikka;
        }

        public int getPelaajaID()
        {
            return _pelaajaID;
        }

        public int getPelinumero()
        {
            return _pelinumero;
        }

        public string getPeJoukkue()
        {

            return _joukkue;
        }
        public string getEtunimi()
        {
            return _etunimi;
        }

        public string getSukunimi()
        {
            return _sukunimi;
        }
        public int getIka()
        {
            return _syntymavuosi;
        }
        public string GETpelipaikka()
        {
            return _pelipaikka;
        }



    }
}
