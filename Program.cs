using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using MySqlConnector;

namespace KNSzL_projekt
{
    internal class Program
    {
        static void Feladat1_Golosok(MySqlConnection kapcsolat)
        {
            string lekerdezes = "SELECT nev, csapatnev, golok FROM jatekosok WHERE golok >= 5";

            var cmd = new MySqlCommand(lekerdezes, kapcsolat);
            var reader = cmd.ExecuteReader();

            Console.WriteLine("\n Játékosok legalább 5 góllal:\n");

            while (reader.Read())
            {
                string nev = reader.GetString("nev");
                string csapat = reader.GetString("csapatnev");
                int golok = reader.GetInt32("golok");

                Console.WriteLine($"- {nev} ({csapat}) — {golok} gól");
            }
        }

        
        static void Feladat2_PirosLaposok(MySqlConnection kapcsolat)
        {
            string lekerdezes = "SELECT jatekosNeve, db FROM lapok WHERE szin = 'piros' AND db >= 2";

            var cmd = new MySqlCommand(lekerdezes, kapcsolat);
            var reader = cmd.ExecuteReader();

            Console.WriteLine("\n Játékosok legalább 2 piros lappal:\n");

            while (reader.Read())
            {
                string nev = reader.GetString("jatekosNeve");
                int lapok = reader.GetInt32("db");

                Console.WriteLine($"- {nev} — {lapok} piros lap");
            }
        }


        static void elsoFeladat(MySqlConnection conn)
        {

            var command = new MySqlCommand("SELECT jatekosok.csapatnev, SUM(lapok.db) AS piros_lapok_szama FROM lapok JOIN jatekosok ON lapok.jatekosNeve = jatekosok.nev WHERE lapok.szin = 'piros' GROUP BY jatekosok.csapatnev ORDER BY piros_lapok_szama DESC;", conn);
            var reader = command.ExecuteReader();
            while (reader.Read())
            {
                Console.WriteLine(reader.GetString(0) + " " + reader.GetInt32(1));
            }
            reader.Close();


        }

        static void masodikFeladat(MySqlConnection conn)
        {
            var command = new MySqlCommand("SELECT jatekosok.csapatnev, jatekosok.nev, jatekosok.golok FROM jatekosok JOIN (    SELECT jatekosok.csapatnev, MAX(jatekosok.golok) AS max_golok     FROM jatekosok     GROUP BY jatekosok.csapatnev ) AS max_goals ON jatekosok.csapatnev = max_goals.csapatnev AND jatekosok.golok = max_goals.max_golok;", conn);
            var reader = command.ExecuteReader();
            while (reader.Read())
            {
                Console.WriteLine(reader.GetString(0) + "\n" + reader.GetString(1) + "\t" + reader.GetInt32(2)+ "\n" );
            }
            reader.Close();

        }

        static void harmadikFeladat(MySqlConnection conn)
        {
            var command = new MySqlCommand("SELECT poszt, SUM(golok) AS osszesGol\r\nFROM jatekosok\r\nGROUP BY poszt\r\nORDER BY osszesGol DESC;", conn);
            var reader = command.ExecuteReader();
            while (reader.Read())
            {
                Console.WriteLine(reader.GetString(0) +": "+ reader.GetInt32(1) + "\n");
            }
            reader.Close();

        }

        static void Main(string[] args)
        {



            bool running = true;

            while (running)
            {
                Console.WriteLine("Menü:");
                Console.WriteLine("1. Foci");
                Console.WriteLine("2. Röpi");
                Console.WriteLine("3. Kézi");
                Console.WriteLine("4. Íjászat");
                Console.WriteLine("0. Kilépés");
                Console.Write("Válasszon egy opciót: ");

                string input = Console.ReadLine();
                int choice;

                if (int.TryParse(input, out choice))
                {
                    switch (choice)
                    {
                        case 0:
                            running = false;
                            break;
                        case 1:
                            string server = "localhost";
                            string database = "foci";
                            string user = "root";
                            string password = "mysql";
                            var connection = new MySqlConnection($"Server={server};" +
                                $"User ID={user};" +
                                $"Password={password};" +
                                $"Database={database}"
                                );
                            connection.Open();
                            Console.WriteLine("Foci opció kiválasztva.");
                            Console.WriteLine("Válasz feladatot:");
                            Console.WriteLine("1. Minden csapat össz piros lapja  ");
                            Console.WriteLine("2. Minden csapat gólkirálya  ");
                            Console.WriteLine("3. Játékosok legalább 5 góllal  ");
                            Console.WriteLine("4. Játékosok legalább 2 piros lappal  ");
                            Console.WriteLine("5. Minden poszt szerzett gólja  ");

                            string input2 = Console.ReadLine();
                            int choice2;

                            if (int.TryParse(input2, out choice2))
                            {
                                switch (choice2)
                                {
                                    case 1:

                                        elsoFeladat(connection);
                                        break;

                                    case 2:

                                        masodikFeladat(connection);
                                        break;
                                    

                                    case 3:
                                        Feladat1_Golosok(connection);
                                        break;


                                    case 4:
                                        Feladat2_PirosLaposok(connection);
                                        break;


                                    case 5:
                                        harmadikFeladat(connection);
                                        break;
                                }


                            }

                            connection.Close();
                            break;
                        case 2:
                            Console.WriteLine("Röpi opció kiválasztva.");
                            // Ide jöhet a röpi opcióhoz tartozó kód

                            Console.WriteLine("Itt nincs végrehajtható feladat.");
                            break;



                        case 3:
                            Console.WriteLine("Kézi opció kiválasztva.");
                            // Ide jöhet a kézi opcióhoz tartozó kód
                            Console.WriteLine("Itt nincs végrehajtható feladat.");
                            break;



                        case 4:
                            Console.WriteLine("Íjászat opció kiválasztva.");
                            // Ide jöhet az íjászat opcióhoz tartozó kód
                            Console.WriteLine("Itt nincs végrehajtható feladat.");


                            break;
                            


                        default:
                            Console.WriteLine("Érvénytelen választás, próbálja újra.");
                            break;
                    }
                }
                else
                {
                    Console.WriteLine("Érvénytelen bemenet, próbálja újra.");
                }

                Console.WriteLine();
                Console.ReadKey();
            }
        }
    }
}

