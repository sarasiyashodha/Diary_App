import 'package:diary_app/components/bottom_line.dart';
import 'package:diary_app/constants.dart';
import 'package:diary_app/screens/login/login_page.dart';
import 'package:flutter/material.dart';

import '../components/button.dart';

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
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(21.0),
          child: Column(
            children: [
              SizedBox(
                height: 469.0,
              ),
              Row(
                children: [
                  Icon(Icons.face),
                  Text('The Journey',
                    style: ktitleTextStyle
                  ),
                ],
              ),
              Text('Document your life, reflect on your journey.',
                  style: ksubTitleTextStyle),
              SizedBox(
                height: 90.0,
              ),
              Button(buttonText: 'Get Started', onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },),
              SizedBox(height: 18.0,),
              BottomLine()

            ],
          ),
        ),
      ),

    );

  }
}

