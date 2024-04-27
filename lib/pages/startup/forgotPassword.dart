import 'package:flutter/material.dart';
import 'package:untitled1/pages/startup/login.dart';
import 'package:untitled1/pages/widgets/customButton.dart';
import 'package:untitled1/pages/widgets/customTextField.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(38.0),
                child: Center(
                  child: Text('Forgot \n Password ?',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 38
                  ),),
                ),
              ),
              const CustomTextField(formLabel: "example@xyz.com", obscureText: false),
              const SizedBox(height: 20,),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(38.0),
                child: CustomButton(text: 'Send', onTap: (){
                  //implement the forgot functionality
                }
                ),
              ),
              Center(
                child: GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context)=>const LogIn()));
                    },
                    child: const Text('Back to login',style: TextStyle(color: Colors.blue),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
