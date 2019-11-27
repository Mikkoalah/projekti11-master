using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;
using Npgsql;
using System.Text;

namespace projekti1
{
    class Joukkue : IComparable<Joukkue>  // IComparable vaaditaan että listaa pystyy järjestämään
    {
        private string _nimi;
        private int _otteluLkm = 0;
        private int _3pvoitot = 0;
        private int _2pvoitot = 0;
        private int _1ptappiot = 0;
        private int _0ptappiot = 0;   
        private int _tehdytmaalit = 0;
        private int _paastetytmaalit = 0;
        private int _pisteet = 0;
        public List<Joukkue> Sarjataulukko = new List<Joukkue>();
        public List<Ottelu> Ottelut = new List<Ottelu>();
        public Joukkue(string nimi)
        {
            _nimi = nimi;
        }
        //SARJATAULUKON JÄRJESTÄMINEN
        public int CompareTo(Joukkue other)
        {
            //JOS PISTEET ON TASAN JÄRJESTETÄÄN TAULUKKO VOITTOJEN YHTEISMÄÄRÄN PERUSTEELLA
            if (_pisteet == other._pisteet)
            {
                //JOS PISTEET SEKÄ VOITOT ON TASAN JÄRESTETÄÄN SARJATAULUKKO MAALIEROTUKSEN PERUSTEELLA
                if ((_3pvoitot + _2pvoitot) == (other._3pvoitot + other._2pvoitot))
                {
                    return -(_tehdytmaalit - _paastetytmaalit) + (other._tehdytmaalit - other._paastetytmaalit);
                }
                return -(_3pvoitot + _2pvoitot) + (other._3pvoitot + other._2pvoitot);
            }
            return -_pisteet + other._pisteet;
        }
        //PALAUTTAA JOUKKUEEN NIMEN
        public string GetNimi()
        {
            return _nimi;
        }
        //PALAUTTAA JOUKKUEEN OTTELULUKUMÄÄRÄN
        public int GetOtteluLkm()
        {
            return _otteluLkm;
        }
        //PALAUTTAA JOUKKUEEN 3pisteen voitot
        public int Get3pVoitot()
        {
            return _3pvoitot;
        }
        //PALAUTTAA JOUKKUEEN 2pisteen voitot
        public int Get2pVoitot()
        {
            return _2pvoitot;
        }
        //PALAUTTAA JOUKKUEEN 1pisteen tappiot
        public int Get1ptappiot()
        {
            return _1ptappiot;
        }
        //PALAUTTAA JOUKKUEEN 0pisteen tappiot
        public int Get0ptappiot()
        {
            return _0ptappiot;
        }
        //PALAUTTAA JOUKKUEEN PISTEET
        public int Getpisteet()
        {
            return _pisteet;
        }
        //PALAUTTAA JOUKKUEEN TEHDYT MAALIT
        public int GetTehdytMaalit()
        {
            return _tehdytmaalit;
        }
        //PALAUTTAA JOUKKUEEN PÄÄSTETYT MAALIT
        public int GetPaastetytMaalit()
        {
            return _paastetytmaalit;
        }

        //ASETTAA OTTELULUKUMÄÄRÄN
        public void SetOtteluLKM(int otteluLKM)
        {
            _otteluLkm = _otteluLkm + otteluLKM;
        }
        //ASETTAA 3 PISTEEN VOITOT
        public void Set3pVoitot(int Svoitot)
        {
            _3pvoitot = _3pvoitot + Svoitot;
        }
        //ASETTAA 2 PISTEEN VOITOT
        public void set2pVoitot(int JApvoitot)
        {
            _2pvoitot = _2pvoitot + JApvoitot;
        }
        //ASETTAA 1 PISTEEN TAPPIOT
        public void set1pTappio(int JAtappiot)
        {
            _1ptappiot = _1ptappiot + JAtappiot;
        }
        //ASETTAA 0 PISTEEN TAPPIOT
        public void set0pTappio()
        {
            _0ptappiot = _otteluLkm - _3pvoitot - _2pvoitot - _1ptappiot;
        }
        //ASETTAA  PISTEET
        public void SetPisteet(int pisteet)
        {
            _pisteet = _pisteet + pisteet;
        }
        //ASETTAA  tehdyt maalit
        public void SetTehdytMaalit(int Tehdytmaalit)
        {
            _tehdytmaalit = _tehdytmaalit + Tehdytmaalit;
        }
        //ASETTAA  päästetyt maalit
        public void SetPaastetytMaalit(int Paastetytmaalit)
        {
            _paastetytmaalit = _paastetytmaalit + Paastetytmaalit;
        }








    }
}










