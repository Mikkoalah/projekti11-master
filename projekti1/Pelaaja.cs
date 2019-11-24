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
        private int _ika;
        private string _pelipaikka;
        


        public Pelaaja(string joukkue, int pelinumero, string etunimi, string sukunimi, int ika, string pelipaikka)
        {
             _joukkue = joukkue;
            _pelinumero = pelinumero;
            _etunimi = etunimi;
            _sukunimi = sukunimi;
            _ika = ika;
            _pelipaikka = pelipaikka;
          

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
            return _ika;
        }
        public string GETpelipaikka()
        {
         return   _pelipaikka;
        }



    }
}
