import 'package:apps_by_rhino/websites.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'apps.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/home': (contact) => HomePage(),
        // 'about-me': (context) => AboutMePage(),
        '/apps': (context) => AppsPage(),
        '/websites': (context) => WebsitesPage(),
        // '/classes': (context) => ClassesPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.quicksandTextTheme(),
      ),
      home: const HomePage(),
    );
  }
}
