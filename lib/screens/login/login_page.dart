import 'package:diary_app/components/bottom_line.dart';
import 'package:diary_app/components/button.dart';
import 'package:flutter/material.dart';
import '../../components/text_field.dart';
import '../../constants.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String username = "";
  String password = "";
  String error = "";

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE9D7D0),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(21.0),
          child: Column(
            children: [
              Lottie.asset('images/Login.json'),
              Align(
                alignment: Alignment.topLeft,
                child: Text('Login your Journey',
                  style: ktitleTextStyle,),
              ),
              Text('Document your life, reflect on your journey.',
                  style: ksubTitleTextStyle),
              MyTextField(
                validator: (val) => val?.isEmpty == true
                    ? "Enter a valid Email"
                    : null,
                controller: usernameController,
                hintText: 'Email',
                obscureText: false,
                onChanged: (val) {
                  setState(() {
                    username = val;
                  });
                },
              ),
              SizedBox(
                height: 10.0,
              ),
              MyTextField(
                validator: (val) => val?.isEmpty == true
                    ? "Enter a valid password"
                    : null,
                controller: passwordController,
                hintText: 'Password',
                obscureText: !passwordVisible,
                onChanged: (val) {
                  setState(() {
                    password = val;
                  });
                },
              ),
              Align(
                alignment: Alignment.topRight,
                  child: Text('Forget Password?')),
              Button(buttonText: 'Open', onTap: (){},),
              Row(
                children: [
                  Text("Don't Have an Account?"),
                  Text('Signup')
                ],
              ),
              BottomLine()
            ],
          ),
        ),
      ),


    );
  }
}
