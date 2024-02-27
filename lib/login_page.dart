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

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                prefixIcon: Icon(Icons.mail),
                // border: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(10.0),
                //   borderSide: BorderSide(color: Colors.blue),
                // ),
                // focusedBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(10.0),
                //   borderSide: BorderSide(color: Colors.green),
                // ),
                // filled: true,
                // fillColor: Colors.grey[200],
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off),
                ),
                // border: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(10.0),
                //   borderSide: BorderSide(color: Colors.blue),
                // ),
                // focusedBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(10.0),
                //   borderSide: BorderSide(color: Colors.green),
                // ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
              keyboardType: TextInputType.visiblePassword,
              obscureText: _obscureText,
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
              text: 'Sign in with Google',
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
