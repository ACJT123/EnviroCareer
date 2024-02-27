import 'package:envirocareer/login_page.dart';
import 'package:envirocareer/widgets/custom_button.dart';
import 'package:envirocareer/widgets/input_field.dart';
import 'package:envirocareer/widgets/text_link_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key});

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
              'Login',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 20),
            LoginForm(),
            TextLinkButton(
              text: 'Forgot Password?',
              onPressedCallback: () {
                // Handle Forgot Password
              },
              style: GoogleFonts.getFont(
                'Roboto',
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            InputField(
              hintText: 'Enter email address',
              prefixIcon: const Icon(Icons.mail),
              inputType: 'email',
            ),
            InputField(
              hintText: 'Enter password',
              prefixIcon: const Icon(Icons.lock),
              inputType: 'password',
            ),
            CustomButton(
              backgroundColor: const Color(0xFF98B873),
              text: 'Login',
              textColor: Colors.white,
              onPressedCallback: () {
                if (_formKey.currentState!.validate()) {
                  // Dismiss the keyboard
                  FocusScope.of(context).unfocus();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
            ),
            CustomButton(
              backgroundColor: const Color(0xFF98B873),
              text: 'Login',
              textColor: Colors.white,
            )
            // ElevatedButton(
            //     onPressed: () {
            //       if (_formKey.currentState!.validate()) {
            //         // Dismiss the keyboard
            //         FocusScope.of(context).unfocus();
            //         ScaffoldMessenger.of(context).showSnackBar(
            //           const SnackBar(content: Text('Processing Data')),
            //         );
            //       }
            //     },
            //     child: Text(
            //       'Login',
            //     ))
          ],
        ));
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
