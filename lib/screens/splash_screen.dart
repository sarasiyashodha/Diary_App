import 'package:diary_app/components/bottom_line.dart';
import 'package:diary_app/constants.dart';
import 'package:diary_app/screens/login/login_page.dart';
import 'package:flutter/material.dart';
import '../components/button.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE9D7D0),
      body: Container(
        margin: EdgeInsets.all(21.0),
        child: Column(
          children: [
            SizedBox(
              height: 164.0,
            ),
            Lottie.asset('images/Welcome 1.json', height: 267.0, width: 334.0),
            SizedBox(
              height: 47.0,
            ),
            Row(
              children: [
                Icon(Icons.face, color: Color(0XFF95796A)),
                Text('The Journey',
                  style: ktitleTextStyle
                ),
              ],
            ),
            Text('Document your life, reflect on your journey.',
                style: ksubTitleTextStyle),
            SizedBox(
              height: 105.0,
            ),
            Button(buttonText: 'Get Started', onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },),
            SizedBox(height: 20.0,),
            BottomLine()

          ],
        ),
      ),

    );

  }
}


