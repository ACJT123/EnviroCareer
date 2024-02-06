import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 50),
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Image.asset('images/earth.png', height: 200),
            const SizedBox(height: 20),
            Text(
              'EnviroCareer',
              style: GoogleFonts.getFont(
                'Risque',
                fontSize: 35,
                color: const Color(0xFF98B873),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Jobs that Thrive, Earth Survives',
              style: GoogleFonts.getFont(
                'Roboto',
                fontSize: 15,
                color: const Color(0xFF9D9D9D),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 200),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: _onPressed,
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF98B873)),
                child: Text(
                  'Get Started',
                  style: GoogleFonts.getFont(
                    'Roboto',
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: _onPressed,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: Text(
                  'Login',
                  style: GoogleFonts.getFont(
                    'Roboto',
                    fontSize: 15,
                    color: const Color(0xFF98B873),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'New around here?',
                  style: GoogleFonts.getFont(
                    'Roboto',
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  'Sign up',
                  style: GoogleFonts.getFont(
                    'Roboto',
                    fontSize: 12,
                    color: const Color(0xFF98B873),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void _onPressed() {
  print('123');
}
