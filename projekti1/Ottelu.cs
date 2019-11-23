using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;
using Npgsql;

namespace projekti1
{
    class Ottelu
    {
        private string _joukkue1;
        private string _joukkue2;
        private int _j1maalit;
        private int _j2maalit;
        public string _tasapeli = "tasapeli";


        //LUODAAN OTTELU JOSSA ASETETAAN KAKSI JOUKKUETTA JA NIIDEN MAALIMÄÄRÄ

        public Ottelu(string joukkue1, string joukkue2, int j1maalit, int j2maalit)
        {
            _joukkue1 = joukkue1;
            _joukkue2 = joukkue2;
            _j1maalit = j1maalit;
            _j2maalit = j2maalit;           
        }

        public string getJoukkue1()
        {
            return _joukkue1;
        }

        public string getJoukkue2()
        {
            return _joukkue2;
        }

        public int GetMaalit1()
        {
            return _j1maalit;
        }

        public int GetMaalit2()
        {
            return _j2maalit;
        }

        public string Getvoittaja()
        {
            if (_j1maalit > _j2maalit)
            {
                return _joukkue1;
            }
            else if (_j2maalit > _j1maalit)
            {
                return _joukkue2;
            }
            else
            {
                return _tasapeli;
            }


        }
    }
}
