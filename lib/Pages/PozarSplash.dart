// ignore_for_file: file_names, unused_import
import 'package:flamefinder/Pages/Dashboard.dart';
import 'package:flamefinder/Pages/Guest.dart';
import 'package:flamefinder/Pages/Login.dart';
import 'package:flamefinder/Pages/Upute.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PozarSplash extends StatefulWidget {
  const PozarSplash({super.key});

  @override
  State<PozarSplash> createState() => _PozarSplashState();
}

class _PozarSplashState extends State<PozarSplash> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D1D25),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to previous screen
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: SizedBox(
                height: 170,
                width: 250,
                child: Lottie.network(
                  'https://assets10.lottiefiles.com/private_files/lf30_J0fVnJ.json',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 10, 25, 0),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'BITNO ZA PROČITATI!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    color: const Color(0xfffc6400),
                    fontSize: 27,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Text(
                          'Molimo Vas da ne šaljete lažne prijave požara ',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: const Color(0xfffc6400),
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                            height: 20), // Added SizedBox for spacing
                        Text(
                          'Kao odgovoran korisnik ove aplikacije za prijavu požara, ključno je razumjeti važnost preciznog izvještavanja. Kako bismo osigurali integritet i djelotvornost ove aplikacije, svi se moramo posvetiti pružanju istinitih informacija prilikom prijavljivanja požara.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '\nZapamtite, lažno prijavljivanje požara može imati ozbiljne posljedice i ometati napore hitnih službi. \n\nHvala vam na razumijevanju.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Upute()),
                              );
                            },
                            child: Text(
                              'Pogledajte upute za prijavu požara',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                color: const Color(0xfffc6400),
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Checkbox(
                                    value: _isChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        _isChecked = value ?? false;
                                      });
                                    },
                                    activeColor: const Color(0xfffc6400),
                                    fillColor: MaterialStateColor.resolveWith(
                                      (states) => states
                                              .contains(MaterialState.selected)
                                          ? const Color(0xfffc6400)
                                          : Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Pročitao sam potrebnu dokumentaciju',
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign.right,
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: SizedBox(
                                  width: 160,
                                  height: 50,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xfffc6400),
                                    ),
                                    onPressed: _isChecked
                                        ? () => _onButtonPressed()
                                        : null,
                                    child: Text(
                                      'PRIJAVI POŽAR!',
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onButtonPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Guest()),
    );
  }
}
