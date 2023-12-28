import 'package:diary_app/components/bottom_line.dart';
import 'package:diary_app/components/button.dart';
import 'package:diary_app/screens/signup/forgot_password.dart';
import 'package:diary_app/screens/signup/signup_email_page.dart';
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

  String email = "";
  String password = "";
  String error = "";

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE9D7D0),
      body: Container(
        margin: EdgeInsets.all(21.0),
        child: Column(
          children: [
            Lottie.asset('images/Login.json', height: 309.0, width: 309.0),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Login your Journey',
                style: ktitleTextStyle,),
            ),
            Text('Document your life, reflect on your journey.',
                style: ksubTitleTextStyle),
            SizedBox(
              height: 15.0,
            ),
            MyTextField(
              validator: (val) => val?.isEmpty == true
                  ? "Enter a valid email"
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
              height: 12.0,
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
            SizedBox(
              height: 12.0,
            ),
            Align(
              alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                    );
                  },
                  child: Text('Forget Password?', style: TextStyle(
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF95796A),
                      fontSize: 13.0
                  ),),
                ),),
            SizedBox(
              height: 12.0,
            ),
            Button(buttonText: 'Open', onTap: (){},),
            SizedBox(
              height: 12.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't Have an Account?",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: Color(0XFF1A1919),
                        fontSize: 12.0
                    )
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupEmailPage()),
                    );
                  },
                  child: Text('Signup',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          color: Color(0XFFFD9340),
                          fontSize: 12.0
                      )
                  ),
                )
              ],
            ),
            SizedBox(
              height: 87.0,
            ),
            BottomLine()
          ],
        ),
      ),


    );
  }
}
