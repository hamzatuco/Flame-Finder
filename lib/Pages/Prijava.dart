// ignore_for_file: file_names

import 'package:flamefinder/Pages/SplashPrijava.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../firebase_options.dart';

class Prijava extends StatefulWidget {
  const Prijava({Key? key}) : super(key: key);

  @override
  State<Prijava> createState() => _PrijavaState();
}

class _PrijavaState extends State<Prijava> {
  String dropdownvalue = 'Manji požar';

  final List<String> items = [
    'Manji požar',
    'Veći požar',
    'Životno ugrožavajući požar',
  ];

  TextEditingController imePrezimeController = TextEditingController();
  TextEditingController ostaliDetaljiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/mapa.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.85),
            ),
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'U IZRADI...',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: const Color(0xfffc6400),
                  fontSize: 27,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Trenutno nemamo sredstava za kupovinu Google Maps API-a',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 25.0,
            right: 25.0,
            child: InkWell(
              onTap: () {
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
                      child: Container(
                        padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom,
                        ),
                        child: SizedBox(
                          height: 470,
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
                                    fontSize: 25,
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
                                    borderRadius: BorderRadius.circular(10.0),
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
                                              horizontal: 15.0, vertical: 10.0),
                                    ),
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              Container(
                                height: 58,
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 15.0, vertical: 10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.grey[200],
                                ),
                                child: DropdownButtonFormField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.transparent, width: 1),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.5),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  value: dropdownvalue,
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(
                                        items,
                                        style: const TextStyle(
                                            fontSize: 15, color: Colors.black),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownvalue = newValue!;
                                    });
                                  },
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                height: 130,
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 15.0, vertical: 10.0),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                      color: Colors.transparent, width: 1.5),
                                ),
                                child: TextField(
                                  controller: ostaliDetaljiController,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500),
                                  decoration: InputDecoration(
                                    hintText: 'Ostali detalji',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 15.0, vertical: 10.0),
                                  ),
                                  maxLines: null,
                                  minLines: 1,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: SizedBox(
                                  height: 50,
                                  width: 210,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xfffc6400),
                                    ),
                                    onPressed: () {
                                      dodajPozar(
                                        imePrezimeController.text.trim(),
                                        dropdownvalue.trim(),
                                        ostaliDetaljiController.text.trim(),
                                      );
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const SplashPrijava()));
                                    },
                                    child: Row(
                                      children: [
                                        const ImageIcon(
                                          AssetImage('assets/zvono.gif'),
                                          size: 35,
                                        ),
                                        const SizedBox(width: 10),
                                        Text(
                                          'PRIJAVI POŽAR!',
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
              child: CircleAvatar(
                backgroundColor: const Color(0xfffc6400),
                radius: 28.0,
                child: Image.asset(
                  'assets/vatra.gif',
                  color: Colors.white,
                  height: 32.0,
                  width: 32.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> dodajPozar(
      String imeIPrezime, String dropdownvalue, String ostaliDetalji) async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    DateTime sad = DateTime.now();
    String datum = DateFormat.yMMMMd().format(sad);
    String sati = DateFormat.Hm().format(sad);
    await FirebaseFirestore.instance.collection('Pozari').add({
      'Ime i prezime': imeIPrezime,
      'Veličina pozara': dropdownvalue,
      'Ostali detalji': ostaliDetalji,
      'X-koordinate': '44.156139',
      'Y-koordinate': '17.785879',
      'Datum_pozara': datum,
      'Vrijeme_pozara': sati,
      'Status': 'Nepotvrđeno'
    });
  }
}
