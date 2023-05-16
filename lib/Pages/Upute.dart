// ignore_for_file: file_names, unused_import, sort_child_properties_last
import 'package:flamefinder/Pages/Dashboard.dart';
import 'package:flamefinder/Pages/Guest.dart';
import 'package:flamefinder/Pages/Login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Upute extends StatefulWidget {
  const Upute({super.key});

  @override
  State<Upute> createState() => _UputeState();
}

class _UputeState extends State<Upute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D1D25),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 19, 19, 24),
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
                'UPUTE ZA PRIJAVU POŽARA',
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
                    'assets/vatraupute.png',
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
                          'Potvrdite postojanje požara: Prije nego što prijavite požar, važno je da potvrdite da se požar zaista događa. To znači da trebate tražiti vidljive znakove vatre, kao što su dim ili plamenovi, te pažljivo procijeniti situaciju. Nemojte se oslanjati samo na glasine ili neovjerene izvore informacija.',
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
                    'assets/siren.png',
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
                          'Kontaktirajte hitne službe: Ako primijetite požar u zatvorenom prostoru, važno je da odmah kontaktirate vatrogasce ili policiju. Ako se radi o požaru u prirodi, prvo nazovite nacionalni broj za hitne službe kako biste prijavili požar i dobili daljnje upute.',
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
                    'assets/lokacija.png',
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
                          'Navedite točnu lokaciju požara: Kada prijavljujete požar, vrlo je važno dati što preciznije informacije o lokaciji. Možete koristiti ugrađenu GPS značajku vašeg telefona ili navedite koordinate, adresu ili orijentir koji se nalazi najbliže požaru. Ovakve informacije mogu pomoći hitnim službama da brže i točnije pronađu mjesto požara.',
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
                    'assets/opis.png',
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
                          'Opišite požar: Kada prijavljujete požar, bitno je da opišete veličinu, smjer i ponašanje požara što je točnije moguće. Važno je uključiti sve relevantne detalje, kao što su prisutnost struktura ili osoba u opasnosti, što će pomoći hitnim službama da procijene situaciju i poduzmu odgovarajuće akcije.',
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
                    'assets/officer.png',
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
                          'Slijedite daljnje upute: Nakon što ste prijavili požar, važno je da slijedite daljnje upute koje vam daju hitne službe. To može uključivati evakuaciju iz zahvaćenog područja ili ostajanje na sigurnom mjestu dok hitne službe dolaze.',
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
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'Uvijek imajte na umu da je brza i točna prijava požara ključna za zaštitu života i imovine. Stoga je važno pratiti ove upute i hitno prijaviti požar kada ga primijetite.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 50),
              child: SizedBox(
                width: 160,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xfffc6400),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'PROČITAO SAM',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
