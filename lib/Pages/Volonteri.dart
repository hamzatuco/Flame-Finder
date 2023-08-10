// ignore_for_file: use_key_in_widget_constructors, file_names, avoid_print
import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flamefinder/Pages/SplashVolonter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../firebase_options.dart';

class Volonteri extends StatefulWidget {
  const Volonteri({Key? key});

  @override
  State<Volonteri> createState() => _VolonteriState();
}

class _VolonteriState extends State<Volonteri> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController imePrezimeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController brojController = TextEditingController();
  TextEditingController pismoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double maxHeight = MediaQuery.of(context).size.height * 0.6;
    if (maxHeight < 300) {
      maxHeight = 300;
    }
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double maxHeight = constraints.maxHeight * 1;
          if (maxHeight < 300) {
            maxHeight = 300;
          }
          return Stack(
            children: [
              Container(
                width:
                    double.infinity, // Ensures the image fills the entire width
                height: maxHeight, // Set the desired height
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      'assets/volonter.jpg',
                      fit: BoxFit.cover,
                    ),
                    ImageFiltered(
                      imageFilter: ImageFilter.blur(
                          sigmaX: 1.5, sigmaY: 1.5), // Adjust blur intensity
                      child: Image.asset(
                        'assets/volonter.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: SizedBox(
                  width: 340,
                  height: 70,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xfffc6400),
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                        backgroundColor: const Color(0xFF24242C),
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(18.0),
                            topRight: Radius.circular(18.0),
                          ),
                        ),
                        builder: (BuildContext context) {
                          return SingleChildScrollView(
                            child: SizedBox(
                              height: 470,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Text(
                                        'UNESITE PODATKE',
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.poppins(
                                          color: const Color(0xfffc6400),
                                          fontSize: 28,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Container(
                                        height: 48,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 15.0, vertical: 10.0),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: Colors.grey[200],
                                        ),
                                        child: TextField(
                                          controller: imePrezimeController,
                                          decoration: InputDecoration(
                                            hintText: 'Ime i prezime',
                                            border: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.5),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.5),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 15.0,
                                                    vertical: 10.0),
                                          ),
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Container(
                                        height: 48,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 15.0, vertical: 10.0),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: Colors.grey[200],
                                        ),
                                        child: TextField(
                                          controller: emailController,
                                          decoration: InputDecoration(
                                            hintText: 'E-mail adresa',
                                            border: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.5),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.5),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 15.0,
                                                    vertical: 10.0),
                                          ),
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Container(
                                        height: 48,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 15.0, vertical: 10.0),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: Colors.grey[200],
                                        ),
                                        child: TextField(
                                          controller: brojController,
                                          decoration: InputDecoration(
                                            hintText: 'Broj telefona',
                                            border: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.5),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.5),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 15.0,
                                                    vertical: 10.0),
                                          ),
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Container(
                                        height: 130,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 15.0, vertical: 10.0),
                                        decoration: BoxDecoration(
                                          color: Colors.grey[200],
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          border: Border.all(
                                              color: Colors.transparent,
                                              width: 1.5),
                                        ),
                                        child: TextField(
                                          controller: pismoController,
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500),
                                          decoration: InputDecoration(
                                            hintText: 'Motivaciono pismo',
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 15.0,
                                                    vertical: 10.0),
                                          ),
                                          maxLines: null,
                                          minLines: 1,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 10, 0, 40),
                                      child: SizedBox(
                                        height: 50,
                                        width: 230,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xfffc6400),
                                          ),
                                          onPressed: () {
                                            prijava(
                                              imePrezimeController.text.trim(),
                                              emailController.text.trim(),
                                              brojController.text.trim(),
                                              pismoController.text.trim(),
                                            );
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const SplashVolonter()));
                                          },
                                          child: Row(
                                            children: [
                                              const ImageIcon(
                                                AssetImage('assets/zvono.gif'),
                                                size: 38,
                                              ),
                                              const SizedBox(width: 10),
                                              Text(
                                                'POŠALJI PRIJAVU!',
                                                textAlign: TextAlign.center,
                                                style: GoogleFonts.poppins(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: ImageIcon(
                            AssetImage('assets/volonter.png'),
                            size: 38,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          'PRIJAVI SE NA PROGRAM',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leading: IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      _scaffoldKey.currentState!.openDrawer();
                    },
                  ),
                  title: Text(
                    'FLAME FINDER',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: Container(
        color: const Color(0xFF1D1D25),
        height: MediaQuery.of(context).size.height * 0.6,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 30, 25, 0),
                    child: Text(
                      'Dobrodošli na stranicu našeg volonterskog programa za zaštitu od požara',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 20, 25, 0),
                    child: Text(
                      '\nMi smo grupa entuzijasta i volontera koji su posvećeni zaštiti ljudi, životinja i prirode od različitih opasnosti koje proizlaze iz požara. Naš program se fokusira na uključivanje volontera u aktivnosti prevencije požara i brze intervencije u slučaju izbijanja požara.\n\nVolonteri koji se prijave za naš program imaju priliku naučiti osnovne principe zaštite od požara, kao i kako da prepoznaju opasne situacije i reaguju na njih. Takođe ćemo vam pružiti obuku o pravilnom rukovanju opremom za gašenje požara, kao i o tome kako da koristite komunikacijske kanale kako biste na vreme dobili obaveštenja o požarima i drugim hitnim situacijama.\n\nNaši volonteri su ključni deo naše zajednice i igraju važnu ulogu u sprečavanju širenja požara. Kao volonter, vaša dužnost će biti da delite informacije o našim aktivnostima sa drugima u vašoj zajednici, kao i da se prijavite za akcije čišćenja rizičnih područja i obuke za evakuaciju. Takođe ćete biti uključeni u planiranje i sprovođenje vežbi gašenja požara, kao i u pratnji profesionalnih vatrogasaca tokom njihovih intervencija.\n\nOvaj program je savršen za ljude koji žele da doprinesu svojoj zajednici i koji su spremni da se angažuju u radu na sprečavanju požara i pomoći u intervenciji. Bilo da imate iskustva u ovom polju ili ne, mi ćemo vam pružiti potrebnu obuku i podršku kako biste bili spremni da se uključite u naše aktivnosti.\n\nPrijavite se za naš volonterski program za zaštitu od požara aplikacija i pomozite nam da zaštitimo zajednicu od opasnosti koje proizilaze iz požara. Kontaktirajte nas ako imate dodatnih pitanja ili želite da saznate više o programu. Hvala vam što ste zainteresovani za našu inicijativu!',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: Text(
                      '\n\nKako se prijaviti?',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 20, 25, 0),
                    child: Text(
                      'Jednostavnim klikom na dugme iznad, popunjavate formu sa Vašim osnovnim podacima preko kojih ćemo Vas obavještavati za daljnja dešavanja u vezi volontiranja...',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 10, 25, 60),
                    child: Text(
                      'Podaci koji su nam porebni su:\n   • Ime i prezime\n   • E-mail adresa\n   • Broj telefona\n   • Motivaciono pismo',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> prijava(
      String imeIPrezime, String email, String broj, String pismo) async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    DateTime sad = DateTime.now();
    String datum = DateFormat.yMMMMd().format(sad);
    String sati = DateFormat.Hm().format(sad);
    await FirebaseFirestore.instance.collection('Volonteri').add({
      'Ime i prezime': imeIPrezime,
      'E-mail': email,
      'Broj telefona': broj,
      'Motivaciono pismo': pismo,
      'Datum prijave': datum,
      'Vrijeme prijave': sati,
    });
  }
}
