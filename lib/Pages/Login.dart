// ignore_for_file: file_names, unused_import, import_of_legacy_library_into_null_safe

import 'package:flamefinder/Pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import '../firebase_options.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/pozadina.jpg',
              fit: BoxFit.cover,
              alignment: const Alignment(0.9, 0.5),
            ),
          ),
          Positioned(
            top: 70, // adjust the value here to move the text down
            left: 25,
            right: 25,
            child: Column(
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'Flame Finder',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 29,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: SizedBox(
                    width: 30.0,
                    child: Divider(
                      color: Colors.white,
                      thickness: 1.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 15, 25, 0),
                  child: Text('Prijavite ili pretražujte lokalne požare',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Center(
              child: Container(
                width: 350,
                height: 440,
                color: const Color(0xFF22222c),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 100, 10, 0),
                      child: Column(
                        children: const [
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2.0,
                                ),
                              ),
                              contentPadding:
                                  EdgeInsets.fromLTRB(10, 30, 0, 30),
                            ),
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                            child: Divider(
                              color: Color.fromARGB(255, 75, 70, 70),
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Lozinka',
                              labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Poppins',
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2.0,
                                ),
                              ),
                              contentPadding:
                                  EdgeInsets.fromLTRB(10, 30, 0, 30),
                            ),
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 90,
                        color: const Color(0xFF1e1d25),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            IconButton(
                              icon: const Icon(Icons.arrow_back),
                              color: Colors.white,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomePage()),
                                );
                              },
                            ),
                            Expanded(
                              child: Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                  child: Text(
                                    'PRIJAVITE SE POMOĆU EMAIL-A',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 140,
                        color: const Color(0xFF1e1d25),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  child: SizedBox(
                                    height: 65, //height of button
                                    width: 370,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(
                                              255, 62, 106, 177)),
                                      onPressed: () {
                                        // Add onPressed function here
                                      },
                                      child: Text(
                                        'Prijava →]',
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Text(
                                    'Zaboravili ste lozinku?',
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
