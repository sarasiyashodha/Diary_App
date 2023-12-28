import 'package:diary_app/components/button.dart';
import 'package:diary_app/components/text_field.dart';
import 'package:diary_app/constants.dart';
import 'package:diary_app/screens/login/login_page.dart';
import 'package:diary_app/screens/login/verify_email_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../components/custom_icon_button.dart';

class SignupEmailPage extends StatefulWidget {
  const SignupEmailPage({super.key});

  @override
  State<SignupEmailPage> createState() => _SignupEmailPageState();
}

class _SignupEmailPageState extends State<SignupEmailPage> {

  String email = "";
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE9D7D0),
      body: Container(
          margin: EdgeInsets.all(21.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: Lottie.asset('images/Signup_Email.json', height: 188.0, width: 308.0)),
                  Positioned(
                    top: 25.0,
                    child: CustomIconButton(
                      icon: Icons.arrow_back_ios_new,
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      }),
                  )
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Align(
                alignment: Alignment.topLeft,
                  child: Text('Signup with Email', style: ktitleTextStyle,)),
              Align(
                alignment: Alignment.topLeft,
                  child: Text('Secure your account with Email confirmation', style: kDescriptionTextStyle,)),
              SizedBox(
                height: 40.0,
              ),
              MyTextField(
                validator: (val) => val?.isEmpty == true
                    ? "Enter a valid Email"
                    : null,
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
                onChanged: (val) {
                  setState(() {
                    email = val;
                  });
                },
              ),
              SizedBox(
                height: 40.0,
              ),
              Button(buttonText: 'Confirm',
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VerifyEmailPage()),
                  );

                },)
            ],
          ),

        ),

    );
  }
}

