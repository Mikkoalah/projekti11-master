using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;
using Npgsql;

namespace projekti1
{
    class Ottelu
    {
        private int _ottelutID;
        private string _joukkue1;
        private string _joukkue2;
        private int _j1maalit;
        private int _j2maalit;
        private DateTime _ottelupvm;
        public string _tasapeli = "tasapeli";
        private string _jatkoaikavoittaja = "JA/RL";


        //LUODAAN OTTELU JOSSA ASETETAAN OTTELULLE ID numero, KAKSI JOUKKUETTA JA NIIDEN MAALIMÄÄRÄ SEKÄ PÄIVÄMÄÄRÄ OTTELULLE
        public Ottelu(int otteluID, string joukkue1, string joukkue2, int j1maalit, int j2maalit, DateTime ottelupvm)
        {
            _ottelutID = otteluID;
            _joukkue1 = joukkue1;
            _joukkue2 = joukkue2;
            _j1maalit = j1maalit;
            _j2maalit = j2maalit;
            _ottelupvm = ottelupvm;
        }
        //PALAUTETAAN OTTELUN ID
        public int getOtteluID()
        {
            return _ottelutID;
        }
        //PALAUTETAAN KOTJOUKKUEEN NIMI
        public string getJoukkue1()
        {
            return _joukkue1;
        }
        //PALAUTETAAN VIERASJOUKKUEEN NIMI
        public string getJoukkue2()
        {
            return _joukkue2;
        }
        //PALAUTETAAN KOTIJOUKKUEEN MAALIT
        public int GetMaalit1()
        {
            return _j1maalit;
        }
        //PALAUTETAAN VIERASJOUKKUEEN MAALIT
        public int GetMaalit2()
        {
            return _j2maalit;
        }
        //PALAUTETAAN OTTELUN PÄIVÄMÄÄRÄ
        public DateTime Getottelupvm()
        {
            return _ottelupvm;
        }

        //PALAUTETAAN OTTELUN VOITTAJA
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

        //SELVITETÄÄ PÄÄ ohjelmasta jatkoaikavoittaja
        public void checkjatkoaikavoittaja(string jatkoaikavoittaja)

        {
            _jatkoaikavoittaja = jatkoaikavoittaja;
        }
        //PAlAUTETAAN JATKOAIKAVOITTAJA
        public string getJatkoaikavoittaja()
        {

            return _jatkoaikavoittaja;
        }







    }

}
