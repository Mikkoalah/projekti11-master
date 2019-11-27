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
        private int _pisteet = 0;
        private int _tehdytmaalit = 0;
        private int _paastetytmaalit = 0;
        public List<Joukkue> Sarjataulukko = new List<Joukkue>();
        public List<Ottelu> Ottelut = new List<Ottelu>();
        public Joukkue(string nimi)
        {
            _nimi = nimi;
        }
        //SARJATAULUKON JÄRJESTÄMINEN PISTEIDEN PERUSTEELLA
        public int CompareTo(Joukkue other)
        {
            return -_pisteet + other._pisteet;
        }
        public string GetNimi()
        {
            return _nimi;
        }
        public int GetOtteluLkm()
        {
            return _otteluLkm;
        }
        public int Getpisteet()
        {
            return _pisteet;
        }
        public int GetTehdytMaalit()
        {
            return _tehdytmaalit;
        }
        public int GetPaastetytMaalit()
        {
            return _paastetytmaalit;
        }
        public void SetPisteet(int pisteet)
        {
            _pisteet = _pisteet + pisteet;

        }
        public void SetOtteluLKM(int otteluLKM)
        {
            _otteluLkm = _otteluLkm + otteluLKM;

        }

        public void SetTehdytMaalit(int Tehdytmaalit)
        {
            _tehdytmaalit = _tehdytmaalit + Tehdytmaalit;

        }
        public void SetPaastetytMaalit(int Paastetytmaalit)
        {
            _paastetytmaalit = _paastetytmaalit + Paastetytmaalit;
        }






    }
}










