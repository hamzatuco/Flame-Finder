// ignore_for_file: use_key_in_widget_constructors, file_names, avoid_print
import 'package:flamefinder/Pages/PozarReport.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double maxHeight = MediaQuery.of(context).size.height * 0.6;
    if (maxHeight < 300) {
      maxHeight = 300;
    }
    return Scaffold(
      key: _scaffoldKey, // Add the scaffold key here
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: const Color(0xfffc6400).withOpacity(0.8),
              ),
              accountName: const Text('John Doe'),
              accountEmail: const Text('johndoe@example.com'),
              currentAccountPicture: const CircleAvatar(
                child: Text('JD'),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Logout'),
              onTap: () {
                // TODO: Add logout functionality
              },
            ),
          ],
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double maxHeight = constraints.maxHeight * 1;
          if (maxHeight < 300) {
            maxHeight = 300;
          }
          return Stack(
            children: [
              FractionallySizedBox(
                widthFactor: 1.0,
                heightFactor: 1,
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(height: maxHeight),
                  child: Image.asset(
                    'assets/pozadinamain.jpg',
                    alignment: const Alignment(0, -0.4),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  width: 280,
                  height: 80,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xfffc6400),
                    ),
                    onPressed: () {
                      MaterialPageRoute(builder: (context) => const Pozar());
                    },
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: ImageIcon(
                            AssetImage('assets/pozar.png'),
                            size: 40,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Text(
                          'PRIJAVI POŽAR!',
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
                    icon: const Icon(Icons.menu),
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
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.height * 0.4,
        child: SizedBox(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: FractionallySizedBox(
                        heightFactor: 1.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1D1D25),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              side: const BorderSide(
                                color: Color(0xFF24242C),
                                width: 1.0,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                color: const Color(0xfffc6400),
                                'assets/historija.png',
                                width: 30,
                                height: 30,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'HISTORIJA\nPOŽARA',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: FractionallySizedBox(
                        heightFactor: 1.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1D1D25),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              side: const BorderSide(
                                color: Color(0xFF24242C),
                                width: 1.0,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                color: const Color(0xfffc6400),
                                'assets/sprijecit.png',
                                width: 30,
                                height: 30,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'SPRIJEČI\nPOŽAR',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: FractionallySizedBox(
                        heightFactor: 1.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1D1D25),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              side: const BorderSide(
                                color: Color(0xFF24242C),
                                width: 1.0,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                color: const Color(0xfffc6400),
                                'assets/vijesti.png',
                                width: 30,
                                height: 30,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'NOVOSTI',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 15,
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
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: FractionallySizedBox(
                        heightFactor: 1.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1D1D25),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              side: const BorderSide(
                                color: Color(0xFF24242C),
                                width: 1.0,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                color: const Color(0xfffc6400),
                                'assets/volonter.png',
                                width: 30,
                                height: 30,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'VOLUNTEER\nPROGRAM',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: FractionallySizedBox(
                        heightFactor: 1.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1D1D25),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              side: const BorderSide(
                                color: Color(0xFF24242C),
                                width: 1.0,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                color: const Color(0xfffc6400),
                                'assets/vatra.gif',
                                width: 30,
                                height: 30,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'LIVE\nPOŽARI',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: FractionallySizedBox(
                        heightFactor: 1.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1D1D25),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              side: const BorderSide(
                                color: Color(0xFF24242C),
                                width: 1.0,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                color: const Color(0xfffc6400),
                                'assets/vatrogasac.png',
                                width: 30,
                                height: 30,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'STANICE\nI OPREMA',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 15,
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
            ],
          ),
        ),
      ),
    );
  }
}
