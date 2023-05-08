// ignore_for_file: file_names, library_private_types_in_public_api, prefer_const_constructors
import 'package:flamefinder/Pages/Dashboard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class SplashPrijava extends StatefulWidget {
  const SplashPrijava({Key? key}) : super(key: key);

  @override
  _SplashPrijavaState createState() => _SplashPrijavaState();
}

class _SplashPrijavaState extends State<SplashPrijava>
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
                        'https://assets6.lottiefiles.com/packages/lf20_MrqlxQzlCN.json',
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                  child: Text(
                    'POŽAR USPJEŠNO PRIJAVLJEN',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: const Color(0xfffc6400),
                      fontSize: 27,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Text(
                    'Vatrogasne službe će pregledati Vašu prijavu i provjeriti postojanje požara, te će izaći na teren.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
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
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: CountdownTimer(
                    endTime: endTime,
                    widgetBuilder: (_, time) {
                      if (time == null) {
                        Future.delayed(Duration(seconds: 1), () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => Dashboard(),
                          ));
                        });
                        return Text(
                          'Preusmjeravanje na početnu stranicu za 0s',
                          style: GoogleFonts.poppins(
                            color: Color.fromARGB(255, 253, 138, 61),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        );
                      } else {
                        return Text(
                          'Preusmjeravanje na početnu stranicu za ${time.sec}s',
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
