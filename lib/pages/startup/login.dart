import 'package:flutter/material.dart';
import 'package:untitled1/pages/startup/forgotPassword.dart';
import 'package:untitled1/pages/startup/register.dart';
import 'package:untitled1/pages/widgets/customButton.dart';
import 'package:untitled1/pages/widgets/customTextField.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/background.jpg'),
        fit: BoxFit.cover
        ),
      ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(38.0),
                  child: Center(
                    child: Text(
                      'My Notes',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 38),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: SizedBox(
                    child: Image.asset(
                      'assets/logo.png',
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const CustomTextField(
                    formLabel: "example@xyz.com", obscureText: false),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextField(
                    formLabel: "Enter your password", obscureText: true),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgotPassword()));
                      },
                      child: const Text(
                        'Forgot Password ?',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(38.0),
                  child: CustomButton(
                      text: 'Log In',
                      onTap: () {
                        //implement the home functionality
                      }),
                ),
                Center(
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => const Register()));
                      },
                      child: const Text(
                        'Not a member? Register Now',
                        style: TextStyle(color: Colors.blue),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
