// ignore_for_file: file_names, library_private_types_in_public_api, prefer_const_constructors
import 'package:flamefinder/Pages/Dashboard.dart';
import 'package:flamefinder/Pages/Volonteri.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class SplashVolonter extends StatefulWidget {
  const SplashVolonter({Key? key}) : super(key: key);

  @override
  _SplashVolonterState createState() => _SplashVolonterState();
}

class _SplashVolonterState extends State<SplashVolonter>
    with SingleTickerProviderStateMixin {
  int endTime = DateTime.now().millisecondsSinceEpoch + 8000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF1D1D25),
        body: SingleChildScrollView(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: SizedBox(
                      height: 350,
                      width: 350,
                      child: Lottie.network(
                        'https://assets1.lottiefiles.com/packages/lf20_EHugAD.json',
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                  child: Text(
                    'PODACI USPJEŠNO DOSTAVLJENI',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: const Color(0xfffc6400),
                      fontSize: 27,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                  child: Text(
                    'Hvala Vam što ste se zainteresovali biti dio našeg volonterskog tima. Naši agenti će Vas uskoro kontaktirati kako biste saznali detalje oko volontiranja...',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                  child: Text(
                    'Hvala Vam na prijavi!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                  child: CountdownTimer(
                    endTime: endTime,
                    widgetBuilder: (_, time) {
                      if (time == null) {
                        Future.delayed(Duration(seconds: 1), () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => Volonteri(),
                          ));
                        });
                        return Text(
                          'Preusmjeravanje nazad za 0s',
                          style: GoogleFonts.poppins(
                            color: Color.fromARGB(255, 253, 138, 61),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        );
                      } else {
                        return Text(
                          'Preusmjeravanje nazad za ${time.sec}s',
                          style: GoogleFonts.poppins(
                            color: Color.fromARGB(255, 253, 138, 61),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
