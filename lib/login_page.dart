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
      body: SingleChildScrollView(
        child: Container(
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
              LoginForm(),
              const SizedBox(height: 20),
            ],
          ),
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

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            const SizedBox(height: 30),
            InputField(
              hintText: 'Email address',
              prefixIcon: const Icon(Icons.email),
              inputType: 'email',
              controller: emailController,
            ),
            const SizedBox(height: 10),
            InputField(
              hintText: 'Password',
              prefixIcon: const Icon(Icons.lock),
              inputType: 'password',
              controller: passwordController,
            ),
            Container(
              alignment: Alignment.topRight,
              width: 300,
              child: TextLinkButton(
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
            ),
            const SizedBox(height: 30),
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
            const SizedBox(height: 10),
            CustomButton(
              backgroundColor: Colors.white,
              textColor: const Color(0xFF98B873),
              text: 'Sign in with Google',
              prefixIcon: GoogleIcon(),
              onPressedCallback: () {},
            ),
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

class GoogleIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset('images/google.png', height: 20);
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
