import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 50),
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            EarthImage(),
            const SizedBox(height: 20),
            HeaderText('EnviroCareer'),
            SubHeaderText('Jobs that Thrive, Earth Survives'),
            const SizedBox(height: 200),
            CustomButton('Get Started', _onPressed, const Color(0xFF98B873)),
            const SizedBox(height: 10),
            CustomButton('Login', _onPressed, Colors.white),
            const SizedBox(height: 20),
            SignUpText(),
          ],
        ),
      ),
    );
  }
}

class EarthImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset('images/earth.png', height: 200);
  }
}

class HeaderText extends StatelessWidget {
  final String text;

  HeaderText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.getFont(
        'Risque',
        fontSize: 35,
        color: const Color(0xFF98B873),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class SubHeaderText extends StatelessWidget {
  final String text;

  SubHeaderText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.getFont(
        'Roboto',
        fontSize: 15,
        color: const Color(0xFF9D9D9D),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;

  CustomButton(this.text, this.onPressed, this.backgroundColor);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
        child: Text(
          text,
          style: GoogleFonts.getFont(
            'Roboto',
            fontSize: 15,
            color: backgroundColor == Colors.white
                ? const Color(0xFF98B873)
                : Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class SignUpText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'New around here?',
          style: GoogleFonts.getFont(
            'Roboto',
            fontSize: 12,
            fontWeight: FontWeight.w500,
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
    );
  }
}

void _onPressed() {
  print('123');
}
