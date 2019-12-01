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
            int ottelulaskuri = 0;
            int pelaajamaara = 0;
            DateTime paivamaara;
            List<Joukkue> Sarjataulukko = new List<Joukkue>();
            List<Ottelu> Ottelut = new List<Ottelu>();
            List<Joukkue> Joukkueluottelo = new List<Joukkue>();
            List<Pelaaja> pelaajaluettelo = new List<Pelaaja>();
            Joukkue joukkueet;

            //PÄÄVALIKKO MISTÄ PÄÄSTÄÄN SWITCH CASE VALINNOILLA OHJELMAN ERI VAIHEISIIN
            do
            {
            valikko:
                Console.WriteLine();
                Console.WriteLine("1 - Syötä sarjaan osallistuvat joukkueet");
                Console.WriteLine("2 - Syötä joukkueen pelaajalista:");
                Console.WriteLine("3 - Syötä otteluita");
                Console.WriteLine("4 - Tulosta lista pelatuista otteluista");
                Console.WriteLine("5 - Tulosta Sarjataulukko");
                Console.WriteLine("6 - Tulosta Lista pelaajista");
                Console.WriteLine("7 - Lataa tiedot tietokantaan");
                Console.WriteLine("8 - Tyhjennä kaikki tiedot sovelluksesta");
                Console.WriteLine("0 - Lopeta");
                try
                {
                    valinta = int.Parse(Console.ReadLine());
                }
                catch (Exception)
                {
                    goto valikko; //PALAUTTAA VALIKKOON JOS LYÖ ESIM. VIRHELYÖNNIN
                }

                switch (valinta)

                {
                    case 1: //asetetaan Joukkueet sarjaan
                    insertmaara:
                        int maara;
                        try
                        {
                            Console.Write("Syötä sarjaan osallistuvien joukkueiden lukumäärä: "); //OHJELMA KYSYY MÄÄRÄN
                            maara = int.Parse(Console.ReadLine());
                        }
                        catch (Exception)
                        {
                            Console.Write("virheelllinen valinta! Anna määrä väliltä 2-20: ");
                            goto insertmaara; //PALAUTTAA Takaisin jos antaa virheellisen arvon                          
                        }
                        Console.WriteLine();
                        for (int i = 0; i < maara; i++)   //KÄYDÄÄN FOR LAUSEELLA LÄPI SYÖTETTY MÄÄRÄ JOUKKUEITA JA ANNETAAN NIILLE NIMI
                        {

                        insertjoukkue:
                            try
                            {
                                Console.Write("Anna {0}. joukkueen nimi: ", i + 1);
                                joukkueet = new Joukkue(Console.ReadLine());
                                Joukkueluottelo.Add(joukkueet);
                                Sarjataulukko.Add(joukkueet);
                            }
                            catch (Exception)
                            {
                                Console.WriteLine("virheelllinen valinta! ");
                                goto insertjoukkue; //PALAUTETAAN JOS LYÖ VIRHEELLISEN ARVON
                            }
                        }
                        break;

                    case 2:     // SYÖTÄ JOUKKUEIDEN PELAAJALISTA
                        int pelaajaID = 0;
                        Pelaaja pelaajat;
                        for (int i = 0; i < Joukkueluottelo.Count; i++)   //KYSELEE FOR LAUSEEN AVULLA KAIKKIEN SYÖTETTYJEN JOUKKUEIDEN PELAAJAT
                        {
                        insertpelaajamaara:
                            try
                            {
                                Console.Write("Anna joukkueen {0} pelaaja määrä:", Joukkueluottelo[i].GetNimi()); //KYSYTÄÄN PELAAJA MÄÄRÄÄ
                                pelaajamaara = int.Parse(Console.ReadLine());
                            }
                            catch (Exception)
                            {
                                Console.WriteLine("virheelllinen valinta! ");
                                goto insertpelaajamaara;  //PALAUTTAA JOS LYÖ VIRHELYÖNNIN
                            }
                            for (int j = 0; j < pelaajamaara; j++)  //KÄY LÄPIANNETUN PELAAJAMÄÄRÄN JA KYSELEE PELAAJAN TIEDOT SEURAAVASSA VAIHEESSA
                            {
                                int pelinumero, syntymavuosi;
                                string joukkue, etunimi, sukinimi;
                                pelaajaID++;
                            insertpelaaja:
                                Console.WriteLine("Joukkueen {0} pelaaja {1}.", Joukkueluottelo[i].GetNimi(), j + 1);
                                joukkue = Joukkueluottelo[i].GetNimi();
                                try
                                {
                                    Console.Write("Anna Pelinumero: ");
                                    pelinumero = int.Parse(Console.ReadLine());
                                    Console.Write("Anna etunumi: ");
                                    etunimi = (Console.ReadLine());
                                    Console.Write("Anna Sukunimi: ");
                                    sukinimi = Console.ReadLine();
                                    Console.Write("Anna syntymävuosi: ");
                                    syntymavuosi = int.Parse(Console.ReadLine());
                                }
                                catch (Exception)
                                {
                                    Console.WriteLine("Virheellinen valinta aloita tietojen antaminen alusta!");
                                    Console.WriteLine();
                                    goto insertpelaaja;  //PALAUTETAAN JOS TEKEE SYÖTTEESSÄ VIRHEEN
                                }
                            //Tarkistetaan että pelaajan pelipaikka annetaan oikeassa muodossa
                            takaisin:
                                Console.Write("Anna pelipaikka seuraavista --> hyökkääjä/puolustaja/maalivahti: ");
                                string pelipaikka = Console.ReadLine();
                                if (pelipaikka == "hyökkääjä" || pelipaikka == "puolustaja" || pelipaikka == "maalivahti")
                                {
                                    //LUODAAN UUSI PELAAJA JA LISÄTÄÄN SE PELAAJALUOTTEOLO LISTAAN
                                    pelaajat = new Pelaaja(pelaajaID, joukkue, pelinumero, etunimi, sukinimi, syntymavuosi, pelipaikka);
                                    pelaajaluettelo.Add(pelaajat);
                                    Console.WriteLine();
                                }
                                else
                                {
                                    Console.WriteLine("vihreellinen pelipaikka");
                                    goto takaisin;   //PALAUTTAA JOS TEKEE ESIM. VIRHELYÖNNIN
                                }

                            }

                        }
                        break;
                    case 3:  //HAETAAN Joukkueluettolosta OTTELUITA kahden for lauseen avulla.
                             //Ottelujen asettelun jälkeen lasketaan foreach lauseilla sarjataulukoden kaikki halutut tiedot. Niiden tulostus tehdään tosin myöhemmässä casessa.
                        Ottelu uusiOttelu;
                        Console.WriteLine();

                        for (int i = 0; i < Joukkueluottelo.Count; i++)
                        {

                            for (int j = 0; j < Joukkueluottelo.Count; j++)
                            {
                                if (i == j) // TÄLLÄ ESTETÄÄN ETTEI JOUKKUE VOI PELATA ITSEÄÄN VASTAAN
                                {
                                    continue;
                                }
                                else
                                    ottelulaskuri++; //LASKETAAN JUOKSEVALLA NUMEROINNILLA OTTELU ID


                                insertottelu:
                                string koti, vieras;
                                int maalitKoti, maalitVieras;
                                char jatkoaika;
                                Console.WriteLine("ottelunumero:{0} = {1} vs {2}", ottelulaskuri, Joukkueluottelo[i].GetNimi(), Joukkueluottelo[j].GetNimi());
                                koti = Joukkueluottelo[i].GetNimi();
                                vieras = Joukkueluottelo[j].GetNimi();
                            syotapvm:
                                try
                                {
                                    Console.Write("Anna ottelulle päivämäärä muotoa DD.MM.YYYY = ");
                                    paivamaara = DateTime.Parse(Console.ReadLine());
                                }
                                catch (Exception)
                                {
                                    Console.WriteLine("virheellinen syöte");
                                    goto syotapvm; //PALAUTTAA JOS TEKEE ESIM. VIRHELYÖNNIN
                                }

                                try
                                {
                                    Console.Write("Syötä varsinaisen peliajan maalimäärä kotijoukkueelle: ");
                                    maalitKoti = int.Parse(Console.ReadLine());
                                    Console.Write("Syötä varsinaisen peliajan maalimäärä vierasjoukkueelle: ");
                                    maalitVieras = int.Parse(Console.ReadLine());
                                }
                                catch (Exception)
                                {
                                    Console.WriteLine("Virheellinen syöte");
                                    Console.WriteLine();
                                    goto insertottelu;  //PALAUTETAAN JOS ASETTAA VIRHAALLISIÄ ARVOJA
                                }

                                //LUODAAN UUSI OTTELU JA LISÄTÄÄN SE Ottelut LISTAAN
                                uusiOttelu = new Ottelu(ottelulaskuri, koti, vieras, maalitKoti, maalitVieras, paivamaara);
                                Ottelut.Add(uusiOttelu);

                                //JOS MAALIT ON TASAN TARKASTELLAAN IF LAUSEILLA VOITTAJA JATKOAJALTA. JOS JOMPIKUMPI JOUKKUE VOITTAA VARSINAISELLA OHITETAAN TUO KYSELY
                                if (maalitKoti == maalitVieras)
                                {
                                jatkoaikasyöte:
                                    Console.WriteLine();
                                    Console.WriteLine("Ottelun varsinainen peliaika päättyy tasan");
                                    Console.Write("Aseta jatkoajan/rl-kisan voittaja (koti tai vieras) merkillä --> k tai v : ");
                                    try
                                    {
                                        jatkoaika = char.Parse(Console.ReadLine());
                                        if (jatkoaika == 'k')
                                        {
                                            Console.WriteLine("Ottelun voittaja jatkoajan jälkeen on {0}", uusiOttelu.getJoukkue1());
                                            uusiOttelu.checkjatkoaikavoittaja(uusiOttelu.getJoukkue1());
                                        }
                                        else if (jatkoaika == 'v')
                                        {
                                            Console.WriteLine("Ottelun voittaja jatkoajan jälkeen on {0}", uusiOttelu.getJoukkue2());
                                            uusiOttelu.checkjatkoaikavoittaja(uusiOttelu.getJoukkue2());
                                        }
                                        else
                                        {
                                            Console.WriteLine("Virheellinen syöte");
                                            goto jatkoaikasyöte;    //PALAUTETAAN JOS SYÖTE EI OLE k tai v
                                        }
                                    }
                                    catch (Exception)
                                    {
                                        Console.WriteLine("Virheellinen syöte");
                                        goto jatkoaikasyöte; //PALAUTETAAN jos syöte on vihreellinen esim. pelkkä entterin painaminen
                                    }
                                }
                                else
                                {
                                    Console.WriteLine("Ottelun voittaja on: {0}", uusiOttelu.Getvoittaja());
                                }
                                Console.WriteLine(); //TYHJÄ RIVI TULOSTUKSEEN

                            //SYÖTETYN OTTELUN JÄLKEEN VALITAAN EDETÄÄNKÖ PÄÄVALIKKOON VAI SYÖTETÄÄNKÖ UUSI OTTELU
                            insertvalinta2:
                                try
                                {
                                    Console.Write("Päävalikkoon pääset syöttämällä: 0\nJatkaaksesi uuteen otteluun anna joku numero: ");
                                    valinta2 = int.Parse(Console.ReadLine());
                                    Console.WriteLine();
                                    if (valinta2 == 1)
                                    {
                                        continue;
                                    }
                                    else if (valinta2 == 0)
                                        goto ulos;
                                }

                                catch (Exception)
                                {
                                    Console.WriteLine("Virheellinen arvo");
                                    goto insertvalinta2;
                                }

                            }
                        }
                    ulos:  //jos on valittu ettei haluta syöttää uutta ottelua tämän avulla päästään ulos for silmukasta


                        //KÄYDÄÄN SARJATAULUKKO LISTA LÄPI
                        foreach (Joukkue laske in Sarjataulukko)
                        {
                            //KÄYDÄÄN OTTELUT LISTA LÄPIT
                            foreach (Ottelu aseta in Ottelut)
                            {
                                //LISÄTÄÄN 3pistettä Varsinaisen peliajan voittajalle
                                if (aseta.Getvoittaja() == laske.GetNimi())  //KUN VOITTAJA ON SAMA KUIN SARJATAULUKON NIMI
                                {
                                    laske.SetPisteet(3); //LIÄSÄTÄÄN 3pistettä taulukkoon
                                    laske.Set3pVoitot(1); //LIÄSÄTÄÄN 1 3pisteen voitto taulukkoon
                                }
                                //ASETAAN PISTE Kotijoukkueelle jos varsinainen peliaika tasan.
                                if (aseta.GetMaalit1() == aseta.GetMaalit2() && aseta.getJoukkue1() == laske.GetNimi())
                                {
                                    laske.SetPisteet(1); //LIÄSÄTÄÄN kotijoukkueelle 1piste taulukkoon
                                    laske.set1pTappio(1); //LIÄSÄTÄÄN 1pisteen tappio taulukkoon
                                }
                                //ASETAAN PISTE vierasjoukkueelle jos varsinainen peliaika tasan.
                                if (aseta.GetMaalit1() == aseta.GetMaalit2() && aseta.getJoukkue2() == laske.GetNimi())
                                {
                                    laske.SetPisteet(1); //LIÄSÄTÄÄN vierasjoukkueelle 1piste taulukkoon
                                    laske.set1pTappio(1); //LIÄSÄTÄÄN 1pisteen tappio taulukkoon
                                }
                                //LISÄTÄÄN piste jatkoaikavoittajalle                            
                                if (aseta.GetMaalit1() == aseta.GetMaalit2() && aseta.getJatkoaikavoittaja() == laske.GetNimi())
                                {
                                    laske.SetPisteet(1);       //LISÄTÄÄN PISTE JATKOAIKA VOITOSTA
                                    laske.SetTehdytMaalit(1); //Lisätään jatkoaika/rankaistuslaukauskilpailun maali tehtyihin maaleihin        
                                    laske.set2pVoitot(1);    //LISÄTÄÄN 2pisteen voitto joukkueelle
                                    laske.set1pTappio(-1);   // VÄHENNETÄÄn JATKOAIKA VOITTAJALTA 1kpl 1pisteen tappiota koska se joudutaan aimmeammassa vaiheessa asettaa molemmille joukkueille

                                }
                                //LISÄTÄÄN OTTELU lukumäärää pelaaville joukkueille
                                if (aseta.getJoukkue1() == laske.GetNimi() || aseta.getJoukkue2() == laske.GetNimi())
                                {
                                    laske.SetOtteluLKM(1);
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
                                if (aseta.getJoukkue2() == laske.GetNimi())
                                {
                                    laske.SetPaastetytMaalit(aseta.GetMaalit1());
                                }
                                //PÄÄSTETTY MAALI vierasjoukkueelle JOS TULEE JATKOAIKA TAPPIO
                                if (aseta.getJoukkue1() == aseta.getJatkoaikavoittaja() && aseta.getJoukkue2() == laske.GetNimi())
                                {
                                    laske.SetPaastetytMaalit(1);
                                }
                                //PÄÄSTETTY MAALI kotijoukkueelle JOS TULEE JATKOAIKA TAPPIO

                                if (aseta.getJoukkue2() == aseta.getJatkoaikavoittaja() && aseta.getJoukkue1() == laske.GetNimi())
                                {
                                    laske.SetPaastetytMaalit(1);
                                }
                                laske.set0pTappio(); // ASETETAAN 0pisteen tappiot
                            }
                        }
                        Sarjataulukko.Sort(); //JÄRJESTETÄÄN SARJATAUKUKKO

                        break;
                    //Tulostaa listan pelatuistat otteluista
                    case 4:

                        foreach (Ottelu item in Ottelut)
                        {
                            if (item.GetMaalit1() == item.GetMaalit2())
                            {
                                Console.WriteLine("Ottelunro:{0} pvm:{1}\n{2}({3}) VS {4}({5}) Voittaja jatkoaika/rl: {6}", item.getOtteluID(), item.Getottelupvm(), item.getJoukkue1(), item.GetMaalit1(), item.getJoukkue2(), item.GetMaalit2(), item.getJatkoaikavoittaja());
                                Console.WriteLine();
                            }
                            else
                                Console.WriteLine("Ottelunro:{0} pvm:{1}\n{2}({3}) VS {4}({5}) Voittaja: {6}", item.getOtteluID(), item.Getottelupvm(), item.getJoukkue1(), item.GetMaalit1(), item.getJoukkue2(), item.GetMaalit2(), item.Getvoittaja());
                            Console.WriteLine();
                        }
                        Console.WriteLine("Jatka painamalla enter: ");
                        Console.ReadLine();
                        break;
                    case 5:
                        //TULOSTETAAN SARJATAULUKKO
                        Console.WriteLine("Joukkue\t\t\tO\tV3\tV2\tH1\tH0 \tTM\tPM\tME\tP ");

                        foreach (Joukkue jarjestys in Sarjataulukko)
                        {
                            Console.WriteLine($"{jarjestys.GetNimi()}\t\t\t{jarjestys.GetOtteluLkm()}\t{jarjestys.Get3pVoitot()}\t{jarjestys.Get2pVoitot()}\t {jarjestys.Get1ptappiot()}\t{jarjestys.Get0ptappiot()}\t{jarjestys.GetTehdytMaalit()}" +
                                $"\t{jarjestys.GetPaastetytMaalit()}\t{jarjestys.GetTehdytMaalit() - jarjestys.GetPaastetytMaalit()}\t{jarjestys.Getpisteet()} ");
                        }
                        //SELITEÄÄN LYHENTEIDEN MERKITYKSET
                        Console.WriteLine("\nO=ottelut: V3=voitto: V2=jatkoaikavoitto: H1=jatkoaikatappio: H0=tappio: TM=tehdytmaalit\n" +
                            "PM=päästetyt maalit: P=pisteet\n");
                        Console.WriteLine("Jatka painamalla enter:");
                        Console.ReadLine();
                        break;

                    case 6:
                        //TULOSTAA LISTAAN PELAAJISTA
                        foreach (Pelaaja item in pelaajaluettelo)
                        {
                            Console.WriteLine($"Nimi:{item.getEtunimi()} {item.getSukunimi()}  Syntymävuosi:{item.getIka()}\nJoukkue:{item.getPeJoukkue()}\nPelipaikka:{item.GETpelipaikka()}");
                            Console.WriteLine();
                        }
                        Console.WriteLine("Jatka painamalla enter:");
                        Console.ReadLine();
                        break;


                    case 7:

                        //LATAA tiedot Tietokantaan 
                        // Käyttäjätunnus: postgres
                        // Salasana: Grespost99
                        // Tietokanta Sarjataulukko
                        // Taulukot: taulukko, ottelut, pelaajalista
                        try
                        {
                            foreach (Joukkue lataaSarja in Sarjataulukko)
                            {
                                Tietokanta.LisaaJoukkue(lataaSarja);
                            }
                            foreach (Ottelu lataaOttelut in Ottelut)
                            {
                                Tietokanta.LisaaOttelu(lataaOttelut);
                            }
                            foreach (Pelaaja lataapelaajat in pelaajaluettelo)
                            {
                                Tietokanta.LisaaPelaajat(lataapelaajat);
                            }
                        }
                        catch (Exception)
                        {
                            Console.WriteLine("Lataus tietokantaan ei onnistunut!");
                            Console.WriteLine("Jatka painamalla Enter");
                            Console.ReadLine();
                            goto ulos;
                        }

                        break;

                    case 8:
                        //TYHJENTÄÄ JOKAISESTA LISTASTA KAIKKI TIEDOT
                        Ottelut.Clear();
                        Sarjataulukko.Clear();
                        Joukkueluottelo.Clear();
                        pelaajaluettelo.Clear();
                        Console.WriteLine("Kaikki tiedot tyhjätty, jatka painamalla enter: ");
                        Console.ReadLine();


                        break;
                    default:
                        break;
                }
            } while (valinta > 0);
        }
    }
}


