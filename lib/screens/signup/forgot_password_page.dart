import 'package:diary_app/screens/signup/new_password_page.dart';
import 'package:flutter/material.dart';

import '../../components/button.dart';
import '../../components/custom_icon_button.dart';
import '../../components/text_field.dart';
import '../../constants.dart';
import 'login_page.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {

  String email = "";
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE9D7D0),
      body: Container(
        margin: EdgeInsets.all(21.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25.0,
            ),
            CustomIconButton(
                icon: Icons.arrow_back_ios_new,
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                }),
            Text('Forgot Password', style: ktitleTextStyle,),
            Text('Reset your Password and Regain Access', style: kDescriptionTextStyle,),
            SizedBox(
              height: 40.0,
            ),
            MyTextField(
              validator: (val) => val?.isEmpty == true
                  ? "Enter a valid em"
                  : null,
              controller: emailController,
              hintText: 'Pin Code',
              obscureText: false,
              onChanged: (val) {
                setState(() {
                  email = val;
                });
              },
            ),
            SizedBox(
              height: 14.0,
            ),
            Text('Resend Code',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: Color(0XFF95796A),
                  fontSize: 12.0
              ),),
            SizedBox(
              height: 14.0,
            ),
            Button(buttonText: 'Confirm',
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewPasswordPage()),
                );
              },)
          ],
        ),
      ),
    );
  }
}
