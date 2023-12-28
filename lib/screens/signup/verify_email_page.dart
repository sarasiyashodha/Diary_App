import 'package:diary_app/screens/signup/signup_email_page.dart';
import 'package:diary_app/screens/signup/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../components/button.dart';
import '../../components/custom_icon_button.dart';
import '../../components/text_field.dart';
import '../../constants.dart';
import 'login_page.dart';

class VerifyEmailPage extends StatefulWidget {
  const VerifyEmailPage({super.key});

  @override
  State<VerifyEmailPage> createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {

  String pincode = "";
  final pincodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE9D7D0),
      body: Container(
        margin: EdgeInsets.all(21.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: Lottie.asset('images/Email_Verification.json', height: 188.0, width: 308.0)),
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
            Text('Email Verification', style: ktitleTextStyle,),
            Text('Secure your account with Email confirmation', style: kDescriptionTextStyle,),
            SizedBox(
              height: 40.0,
            ),
            MyTextField(
              validator: (val) => val?.isEmpty == true
                  ? "Enter a valid pin code"
                  : null,
              controller: pincodeController,
              hintText: 'Pin Code',
              obscureText: false,
              onChanged: (val) {
                setState(() {
                  pincode = val;
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
                  MaterialPageRoute(builder: (context) => SignupPage()),
                );
              },)
          ],
        ),

      ),

    );
  }
}
