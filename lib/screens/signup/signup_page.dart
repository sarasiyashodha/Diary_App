import 'package:diary_app/components/bottom_line.dart';
import 'package:diary_app/components/button.dart';
import 'package:diary_app/screens/signup/verify_email_page.dart';
import 'package:flutter/material.dart';

import '../../components/custom_icon_button.dart';
import '../../components/custom_text_field.dart';
import '../../components/text_field.dart';
import '../../constants.dart';
import '../profile/home_page.dart';
import 'login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  String firstname = "";
  String lastname = "";
  String nickname = "";
  String email = "";
  String password = "";
  String date = "";
  String gender = "";
  String error = "";

  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final nicknameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final dateController = TextEditingController();
  final genderController = TextEditingController();
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE9D7D0),
      body: Container(
        margin: EdgeInsets.all(21.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25.0,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: CustomIconButton(
                    icon: Icons.arrow_back_ios_new,
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VerifyEmailPage()),
                      );
                    }),
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text('Signup Journey', style: ktitleTextStyle,)),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text('Create Your Account and Get Started', style: kDescriptionTextStyle,)),
              SizedBox(
                height: 40.0,
              ),
              MyTextField(
                validator: (val) => val?.isEmpty == true
                    ? "Enter a valid name"
                    : null,
                controller: firstnameController,
                hintText: 'First Name*',
                obscureText: false,
                onChanged: (val) {
                  setState(() {
                    firstname = val;
                  });
                },
              ),
              SizedBox(height: 15,),
              MyTextField(
                validator: (val) => val?.isEmpty == true
                    ? "Enter a valid name"
                    : null,
                controller: lastnameController,
                hintText: 'Last Name*',
                obscureText: false,
                onChanged: (val) {
                  setState(() {
                    lastname = val;
                  });
                },
              ),
              SizedBox(height: 15,),
              MyTextField(
                validator: (val) => val?.isEmpty == true
                    ? "Enter a valid name"
                    : null,
                controller: nicknameController,
                hintText: 'Nick Name',
                obscureText: false,
                onChanged: (val) {
                  setState(() {
                    nickname = val;
                  });
                },
              ),
              SizedBox(height: 15,),
              TextFormField(
                controller: emailController,
                obscureText: true, // or false based on your needs
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Color(0XFFE5E4E3),
                      width: 1.0,
                    ),
                  ),
                  fillColor: Color(0XFFF3F3F3),
                  filled: true,
                  hintText: 'shehan@gmail.com',
                  hintStyle: TextStyle(
                    color: Color(0XFFB3B1B0),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0,
                  ),
                ),
                validator: (val) => val?.isEmpty == true
                    ? "Enter a valid email"
                    : null,
                onChanged: (val) {
                  setState(() {
                    email = val;
                  });
                },
              ),
              SizedBox(height: 15,),
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
              SizedBox(height: 15,),
              Row(
                children: [
                  CustomTextField(
                    validator: (val) => val?.isEmpty == true
                        ? "Enter a valid date"
                        : null,
                    controller: dateController,
                    hintText: 'DD/MM/YY',
                    obscureText: false,
                    icon: Icons.calendar_month,
                    onChanged: (val) {
                      setState(() {
                        date = val;
                      });
                    },
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  CustomTextField(
                    validator: (val) => val?.isEmpty == true
                        ? "Enter a gender"
                        : null,
                    controller: genderController,
                    hintText: 'Gender',
                    obscureText: false,
                    onChanged: (val) {
                      setState(() {
                        gender = val;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 45,),
              Button(buttonText: 'Sign up',
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );

                },),
              SizedBox(height: 12.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already Have an Account?",
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
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text('Login',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            color: Color(0XFFFD9340),
                            fontSize: 12.0
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60.0,
              ),
              BottomLine()

            ],
          ),
        ),
      ),
    );
  }
}
