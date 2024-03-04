import 'package:envirocareer/login_page.dart';
import 'package:envirocareer/widgets/custom_button.dart';
import 'package:envirocareer/widgets/input_field.dart';
import 'package:envirocareer/widgets/text_link_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabase = Supabase.instance.client;

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  padding: const EdgeInsets.only(left: 30),
                  alignment: Alignment.topLeft,
                  child: Icon(Icons.arrow_back),
                ),
              ),

              const Text(
                'Create Account',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Text(
                'To get more exclusive contents',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 20),
              CreateAccountForm(),
              // TextLinkButton(
              //   text: 'Forgot Password?',
              //   onPressedCallback: () => {
              //     Navigator.of(context).push(
              //       MaterialPageRoute(builder: (BuildContext context) {
              //         return const LoginPage();
              //       }),
              //     )
              //   },
              //   style: GoogleFonts.getFont(
              //     'Roboto',
              //     fontSize: 15,
              //     fontWeight: FontWeight.bold,
              //     color: Colors.black,
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

class CreateAccountForm extends StatefulWidget {
  const CreateAccountForm({super.key});

  @override
  State<CreateAccountForm> createState() => CreateAccountFormState();
}

class CreateAccountFormState extends State<CreateAccountForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  void _resetForm() {
    _formKey.currentState!.reset();
    usernameController.clear();
    emailController.clear();
    phoneNumberController.clear();
    passwordController.clear();
    confirmPasswordController.clear();
  }

  void _onSubmit() async {
    // Dismiss the keyboard
    FocusScope.of(context).unfocus();

    try {
      final authResponse = await supabase.auth.signUp(
        password: passwordController.text,
        email: emailController.text,
        data: {'username': usernameController.text},
      );
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(authResponse.toString())),
      );
    } catch (error) {
      // Handle exceptions, e.g., network issues
      print('Error during sign up: ${error}');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Error during sign up. Please try again.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(children: [
        const SizedBox(height: 10),
        InputField(
          hintText: 'Username',
          prefixIcon: const Icon(Icons.account_circle_outlined),
          inputType: 'username',
          controller: usernameController,
        ),
        const SizedBox(height: 10),
        InputField(
          hintText: 'Email address',
          prefixIcon: const Icon(Icons.email),
          inputType: 'email',
          controller: emailController,
        ),
        const SizedBox(height: 10),
        InputField(
          hintText: 'Phone number',
          prefixIcon: const Icon(Icons.phone),
          inputType: 'phone number',
          controller: phoneNumberController,
        ),
        const SizedBox(height: 10),
        InputField(
          hintText: 'Password',
          prefixIcon: const Icon(Icons.lock),
          inputType: 'password',
          controller: passwordController,
        ),
        const SizedBox(height: 10),
        InputField(
          hintText: 'Confirm Password',
          prefixIcon: const Icon(Icons.lock),
          inputType: 'password',
          controller: confirmPasswordController,
        ),
        const SizedBox(height: 40),
        CustomButton(
          backgroundColor: const Color(0xFF98B873),
          text: 'Create Account',
          textColor: Colors.white,
          onPressedCallback: () {
            if (_formKey.currentState!.validate()) {
              _onSubmit();
            }
          },
        ),
        const SizedBox(height: 10),
        CustomButton(
          backgroundColor: Colors.white,
          textColor: const Color(0xFF9D9D9D),
          text: 'Reset',
          onPressedCallback: () {
            _resetForm();
          },
        )
      ]),
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
