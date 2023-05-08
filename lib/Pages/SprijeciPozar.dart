// ignore_for_file: file_names, unused_import, sort_child_properties_last
import 'package:flamefinder/Pages/Dashboard.dart';
import 'package:flamefinder/Pages/Guest.dart';
import 'package:flamefinder/Pages/Login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Sprijeci extends StatefulWidget {
  const Sprijeci({super.key});

  @override
  State<Sprijeci> createState() => _SprijeciState();
}

class _SprijeciState extends State<Sprijeci> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D1D25),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 19, 19, 24),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () {
              Navigator.pop(context); // Navigate back to previous screen
            },
          ),
          title: Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'KAKO SPRIJEČITI POŽAR',
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                  color: const Color(0xfffc6400),
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 30, 5, 0),
                  child: Image.asset(
                    'assets/alarm.png',
                    width: 75,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 25, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xfffc6400), width: 2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Text(
                          'Instalirajte detektore dima i požarne alarme: Detektori dima i požarni alarmi su neophodni za rano otkrivanje požara, što vam omogućava da preduzmete akciju prije nego što se proširi. Pobrinite se da ih redovno testirate i po potrebi zamijenite baterije.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      width: null,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 30, 5, 0),
                  child: Image.asset(
                    'assets/hemija.png',
                    width: 75,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 25, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xfffc6400), width: 2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Text(
                          'Držite zapaljive materijale dalje od izvora toplote: Zapaljive materijale kao što su papir, odeća i proizvodi za čišćenje treba držati dalje od izvora toplote kao što su peći, grejači i električni uređaji.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      width: null,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 30, 5, 0),
                  child: Image.asset(
                    'assets/kuhanje.png',
                    width: 75,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 25, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xfffc6400), width: 2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Text(
                          'Ne ostavljajte kuhanje bez nadzora: Kuvanje je čest uzrok požara u kući, pa je važno da ostanete u kuhinji dok kuhate i ne ostavljate ništa na šporetu bez nadzora.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      width: null,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 30, 5, 0),
                  child: Image.asset(
                    'assets/elek.png',
                    width: 75,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 25, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xfffc6400), width: 2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Text(
                          'Budite oprezni s električnim uređajima: neispravni električni uređaji mogu uzrokovati požar, stoga se pobrinite da ih koristite bezbedno. Nemojte preopteretiti električne utičnice i isključivati uređaje iz struje kada nisu u upotrebi.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      width: null,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 30, 5, 0),
                  child: Image.asset(
                    'assets/izlaz.png',
                    width: 75,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 25, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xfffc6400), width: 2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Text(
                          'Imajte plan za evakuaciju od požara: Uverite se da svi u domaćinstvu znaju kako da pobegnu u slučaju požara. Imajte određeno mjesto za sastanke izvan kuće i redovno vježbajte plan.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      width: null,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 30, 5, 0),
                  child: Image.asset(
                    'assets/cigar.png',
                    width: 75,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 25, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xfffc6400), width: 2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Text(
                          'Pravilno odložite cigarete: Pušenje je čest uzrok požara, pa ako pušite, pobrinite se da pravilno odložite opuške u pepeljare ili za to određena mjesta za pušenje.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      width: null,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
