import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flamefinder/firebase_options.dart';
import 'package:google_fonts/google_fonts.dart';

class Historija extends StatelessWidget {
  const Historija({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D1D25),
      appBar: AppBar(
        toolbarHeight: 70,
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
            alignment: Alignment.center,
            child: Text(
              'HISTORIJA POZARA',
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                color: const Color(0xfffc6400),
                fontSize: 25,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('Pozari')
            .orderBy('Vrijeme_pozara',
                descending: true) // Order by Vrijeme požara, descending
            .orderBy('Datum_pozara',
                descending: false) // Then order by Datum požara, descending
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Text('Error: ${snapshot.error}');
          }

          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          final pozari = snapshot.data?.docs;

          return ListView.builder(
            itemCount: pozari?.length,
            itemBuilder: (context, index) {
              final pozar = pozari?[index].data() as Map<String, dynamic>;

              return Card(
                color: Color.fromARGB(255, 81, 81, 103),
                margin: EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ime i prezime: ${pozar['Ime i prezime'] ?? 'N/A'}',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight
                              .w500, // Use FontWeight.w500 for medium weight
                        ),
                      ),
                      Text(
                        'Datum požara: ${pozar['Datum_pozara'] ?? 'N/A'}',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Vrijeme požara: ${pozar['Vrijeme_pozara'] ?? 'N/A'}',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Veličina požara: ${pozar['Veličina pozara'] ?? 'N/A'}',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Ostali detalji: ${pozar['Ostali detalji'] ?? 'N/A'}',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'X-koordinate: ${pozar['X-koordinate'] ?? 'N/A'}',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Y-koordinate: ${pozar['Y-koordinate'] ?? 'N/A'}',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
