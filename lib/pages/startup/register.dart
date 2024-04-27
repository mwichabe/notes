import 'package:flutter/material.dart';
import 'package:untitled1/pages/startup/login.dart';
import 'package:untitled1/pages/widgets/customButton.dart';
import 'package:untitled1/pages/widgets/customTextField.dart';
import 'package:url_launcher/url_launcher.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
   void _launchPrivacyPolicy() async {
    final Uri url = Uri.parse('https://www.rendiet.com/privacy');
    if (!await launchUrl(url)) {
      throw 'Could not launch ${url}';
    }
  }
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
                    child: Text('Register Now',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 38
                    ),),
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
                const CustomTextField(formLabel: "example@xyz.com", obscureText: false),
                const SizedBox(height: 20,),
                const CustomTextField(formLabel: "Enter Your Username", obscureText: false),
                const SizedBox(height: 20,),
                const CustomTextField(formLabel: "Enter your password", obscureText: false),
                const SizedBox(height: 20,),
                const CustomTextField(formLabel: "Confrim your password", obscureText: false),
                const SizedBox(height: 20,),
        
                GestureDetector(
                  onTap: _launchPrivacyPolicy,
                  child: const Center(child: Text('Terms and Condition',style: TextStyle(color: Colors.blue),)),
                ),
                Padding(
                  padding: const EdgeInsets.all(38.0),
                  child: CustomButton(text: 'Register', onTap: (){
                    //implement the home functionality
                  }
                  ),
                ),
                Center(
                  child: GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context)=>const LogIn())
                        );
                      },
                      child: const Text('Already a member? Login',style: TextStyle(color: Colors.blue),)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}