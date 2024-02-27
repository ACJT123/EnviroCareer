import 'package:envirocareer/login_page.dart';
import 'package:envirocareer/widgets/input_field.dart';
import 'package:envirocareer/widgets/text_link_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            EarthImage(),
            const SizedBox(height: 10),
            HeaderText('EnviroCareer'),
            const SizedBox(height: 40),
            const Text(
              'Sign In',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 20),
            InputField(
              hintText: 'Enter email address',
              prefixIcon: Icon(Icons.email),
              inputType: 'email',
            ),
            InputField(
              hintText: 'Enter password',
              inputType: 'password',
            ),
            TextLinkButton(
              text: 'Forgot Password?',
              onPressedCallback: () => {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return const LoginPage();
                  }),
                )
              },
              style: GoogleFonts.getFont(
                'Roboto',
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class EarthImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset('images/earth.png', height: 100);
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
