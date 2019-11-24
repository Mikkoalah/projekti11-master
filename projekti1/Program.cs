using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.IO;
using Npgsql;


namespace projekti1
{
    class Program
    {


        static void Main(String[] args)
        {               
            int valinta;
            int valinta2;
            int kierros = 0;
            int ottelulaskuri=0;
            int pelaajamaara = 0;
            DateTime paivamaara;
            List<Joukkue> Sarjataulukko = new List<Joukkue>();
            List<Ottelu> Ottelut = new List<Ottelu>();
            List<Joukkue> Joukkueluottelo = new List<Joukkue>();
            List<Pelaaja> pelaajaluettelo = new List<Pelaaja>();
            
            do
            {
                Console.WriteLine();
                Console.WriteLine("1 - Syöta sarjaan osallistuvat joukkueet");
                Console.WriteLine("2 - Syötä joukkueen pelaajalista:");
                Console.WriteLine("3 - Syöta otteluita");
                Console.WriteLine("4 - Tulosta lista pelatuista otteluista");
                Console.WriteLine("5 - Tulosta Sarjataulukko");
                Console.WriteLine("6 - Lataa tiedot possuun");
                Console.WriteLine("0 - Lopeta");
                valinta = int.Parse(Console.ReadLine());                               
                switch (valinta)

                {                       
                    case 1: //asetetaan Joukkueet sarjaan
                        Console.Write("Syötä sarjaan osallistuvien joukkueiden lukumäärä: ");
                        int maara = int.Parse(Console.ReadLine());
                        Console.WriteLine();
                        for (int i = 0; i < maara; i++)
                        {
                            Joukkue joukkueet;
                            Console.Write("Anna {0}. joukkueen nimi: ", i + 1);
                            joukkueet = new Joukkue(Console.ReadLine());                       
                            Joukkueluottelo.Add(joukkueet);
                            Sarjataulukko.Add(joukkueet);
                        }
                        break;                 
                    case 2:     // SYÖTÄ JOUKKUEIDEN PELAAJALISTA

                        Pelaaja pelaajat;
                        for (int i = 0; i < Joukkueluottelo.Count; i++)
                        {

                            Console.Write("Anna joukkueen {0} pelaaja määrä:", Joukkueluottelo[i].GetNimi());
                            pelaajamaara  = int.Parse(Console.ReadLine());                  
                            for (int j = 0; j < pelaajamaara; j++)
                            {
                                Console.WriteLine("Joukkueen {0} pelaaja {1}." , Joukkueluottelo[i].GetNimi(), j+1 );
                                string joukkue = Joukkueluottelo[i].GetNimi();
                                Console.Write("Anna Pelinumero: ");
                                int pelinumero = int.Parse(Console.ReadLine());
                                Console.Write("Anna etunumi: ");
                                string etunimi = (Console.ReadLine());
                                Console.Write("Anna Sukunimi: ");
                                string sukinimi = Console.ReadLine();
                                Console.Write("Anna ikä: ");
                                int ika = int.Parse(Console.ReadLine());
                                Console.Write("Anna Pelipaikka: ");
                                string pelikaikka = Console.ReadLine();
                                Console.WriteLine();
                                pelaajat = new Pelaaja(joukkue, pelinumero,etunimi,sukinimi,ika,pelikaikka);
                                pelaajaluettelo.Add(pelaajat);                               
                            }
                            
                        }
                        




                        break;
                    case 3:  //HAETAAN Joukkueluettolosta OTTELUITA kahden for lauseen avulla.
                        Ottelu uusiOttelu;
                        Console.WriteLine();

                        for (int i = 0; i < Joukkueluottelo.Count; i++)
                        {
                            kierros++;
                            
                           
                          
                            for (int j = 0; j < Joukkueluottelo.Count; j++)
                            {
                                if (i == j)
                                {
                                    continue;
                                }
                                else
                                ottelulaskuri++; //LASKETAAN juoksevalla numeroinnilla otteluille ID
                                Console.Write("Anna Ottelupäivämäärä muotoa DD.MM.YYYY = ");
                                paivamaara = DateTime.Parse(Console.ReadLine());
                               // Console.WriteLine("{0}", paivamaara);
                                Console.WriteLine("Kierros:{0}.\nottelunumero{1} = {2} vs {3}", kierros, ottelulaskuri ,Joukkueluottelo[i].GetNimi(), Joukkueluottelo[j].GetNimi());
                                string koti = Joukkueluottelo[i].GetNimi();
                                string vieras = Joukkueluottelo[j].GetNimi();
                                Console.Write("Syötä maalimäärä kotijoukkue: ");

                                int maalitKoti = int.Parse(Console.ReadLine());
                                Console.Write("Syötä maalimäärä vierasjoukkue: ");
                                int maalitVieras = int.Parse(Console.ReadLine());
                                uusiOttelu = new Ottelu(ottelulaskuri, koti, vieras, maalitKoti, maalitVieras, paivamaara);


                                Ottelut.Add(uusiOttelu);
                                if (maalitKoti == maalitVieras)
                                {
                                    Console.WriteLine("Ottelun lopputulos on: {0}", uusiOttelu.Getvoittaja());
                                }
                                else
                                {
                                    Console.WriteLine("Ottelun voittaja on: {0}", uusiOttelu.Getvoittaja());
                                }
                            
                                Console.WriteLine();

                                //SYÖTETYN OTTELUN JÄLKEEN VALITAAN EDETÄÄNKÖ Päävalikkoon vai syötetäänkö uusi ottelu
                                Console.WriteLine("Syötä uusi ottelu = 1: ");
                                Console.Write("Päävalikkoon pääset syöttämällä = 0: ");
                                valinta2 = int.Parse(Console.ReadLine());
                                Console.WriteLine();
                                if (valinta2 == 0)
                                {
                                    goto ulos;
                                }
                                else
                                    continue;
                            }
                        }
                        ulos:  //jos on valittu ettei haluta syöttää uutta ottelua tämän avulla päästään ulos for silmukasta

                        //LISÄTÄÄN OTTELUJEN PERUSTEELLA SARJATAULUKKOON PISTEET, PELATUT OTTELUT SEKÄ MAALIMÄÄRÄT
                        foreach (Joukkue laske in Sarjataulukko)
                        {
                            //LISÄTÄÄN PISTEET VOITTAJALLA
                            foreach (Ottelu aseta in Ottelut)
                            {
                                if (aseta.Getvoittaja() == laske.GetNimi())
                                {
                                    laske.SetPisteet(3);
                                }                       
                            //LISÄTÄÄN OTTELUJENMÄÄRÄÄ PELAAVILLE JOUKKUEILLE
                            
                                if (aseta.getJoukkue1() == laske.GetNimi() || aseta.getJoukkue2() == laske.GetNimi())
                                {
                                    laske.SetOtteluLKM(1);
                                }                           
                            //LISÄTÄÄN KOTIJOUKKUEILLE PISTEET TASAPELITILANTEESSA                           
                                if (aseta.GetMaalit1() == aseta.GetMaalit2() && aseta.getJoukkue1() == laske.GetNimi())
                                {
                                    laske.SetPisteet(1);
                                }                           
                            //LISÄTÄÄN VIETASJOUKKUEILLE PISTEET TASAPELITILANTEESSA                          
                                if (aseta.GetMaalit1() == aseta.GetMaalit2() && aseta.getJoukkue2() == laske.GetNimi())
                                {
                                    laske.SetPisteet(1);
                                }
                                //TEHDYT MAALIT KOTIJOUKKUEELLE
                                if (aseta.getJoukkue1() == laske.GetNimi())
                                {
                                    laske.SetTehdytMaalit(aseta.GetMaalit1());
                                }                            
                                //TEHDYTMAALIT VIERASJOUKKUEELLE
                                if (aseta.getJoukkue2() == laske.GetNimi())
                                {
                                    laske.SetTehdytMaalit(aseta.GetMaalit2());
                                }
                                //PÄÄSTETYTMAALIT KOTIJOUKKUEELLE
                                if (aseta.getJoukkue1() == laske.GetNimi())
                                {
                                    laske.SetPaastetytMaalit(aseta.GetMaalit2());
                                }
                                //PÄÄSTETYT MAALIT VIERASJOUKKUEELLE
                                if (aseta.getJoukkue2()== laske.GetNimi())
                                {
                                    laske.SetPaastetytMaalit(aseta.GetMaalit1());
                                }                          
                            }
                        }

                        break;
                    //Tulostaa listan pelatuistat otteluista
                    case 4:

                        foreach (Ottelu item in Ottelut)
                        {
                            Console.WriteLine("Kierros:{1} Ottelunro:{1} pvm:{2}\n{3}({4}) VS {5}({6}) Voittaja/lopputulos: {7}",kierros,item.getOtteluID(), item.Getottelupvm() ,item.getJoukkue1(), item.GetMaalit1(), item.getJoukkue2(), item.GetMaalit2(), item.Getvoittaja());
                            Console.WriteLine();
                        }
                        Console.WriteLine("Jatka painamalla enter: ");
                        Console.ReadLine();
                        break;
                    case 5:
                        //TULOSTETAAN SARJATAULUKKO
                        Console.WriteLine("Joukkue  \t Ottelut \t   Pisteet \t Tehdyt Maalit \t Päästetytmaalit \t Maalierotus");
                        Sarjataulukko.Sort();
                        foreach (Joukkue jarjestys in Sarjataulukko)
                        {                   
                            Console.WriteLine($"{jarjestys.GetNimi()}\t\t{jarjestys.GetOtteluLkm()}\t\t{jarjestys.Getpisteet()}\t\t{jarjestys.GetTehdytMaalit()}\t\t {jarjestys.GetPaastetytMaalit()}\t\t{jarjestys.GetTehdytMaalit()-jarjestys.GetPaastetytMaalit()} ");
                        }                       
                        break;
                    case 6:

                        //LATAA SARJATAULUKKO POSSUUN

                        foreach (Joukkue lataaSarja in Sarjataulukko)
                        {
                            Tietokanta.LisaaJoukkue(lataaSarja);
                        }

                        //LATAAA OTTELUTIEDOT POSSUUN
                        foreach (Ottelu lataaOttelut in Ottelut)
                        {
                            Tietokanta.LisaaOttelu(lataaOttelut);
                        }
                       

                        foreach (Pelaaja lataapelaajat in pelaajaluettelo)
                        {
                            Tietokanta.LisaaPelaajat(lataapelaajat);
                        }
                        break;

                    case 7:

                        foreach (Pelaaja item in pelaajaluettelo)
                        {
                            Console.WriteLine($"Joukkue: {item.getPeJoukkue()}\nEtunimi: {item.getEtunimi()}\nSukunimi: {item.getSukunimi()}\nIKÄ: {item.getIka()}\nPelipaikka: {item.GETpelipaikka()}");
                        }

                        break;                                                               
                        default:
                        break;
                        }
                } while (valinta > 0) ;
            }
    }
    }


