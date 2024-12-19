import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff056C5C),
      appBar: AppBar(
        title: Text('Тапшырма 4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Keldibek k Meridina',
                style: GoogleFonts.pacifico(
                    color: Colors.white,
                    fontSize: 38,
                    fontWeight: FontWeight.w400)),
            Text('Flutter Developer',
                style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w400)),
            Divider(
              indent: 57,
              endIndent: 57,
              height: 0.5,
              color: Colors.white,
              thickness: 2,
            ),
            SizedBox(
              height: 23.5,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: '+996 778 10 10 10',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 24,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'keldibekovameridina@gmail.com',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder()),
            )
          ],
        ),
      ),
    );
  }
}
