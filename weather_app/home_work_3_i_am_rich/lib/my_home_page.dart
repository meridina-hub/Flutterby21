import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECB90B),
      appBar: AppBar(
        backgroundColor: Color(0xffECB90B),
        title: Text(
          'Тапшырма 3',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "I'm Rich",
              style: GoogleFonts.sofia(fontSize: 48),
            ),
            Image.asset('assets/almaz.png'),
          ],
        ),
      ),
    );
  }
}
