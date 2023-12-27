import 'package:diary_app/components/bottom_line.dart';
import 'package:diary_app/constants.dart';
import 'package:diary_app/screens/login/login_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // void initState() {
  //   super.initState();
  //   Future.delayed(Duration(seconds: 3), () {
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => LoginPage()),
  //     );
  //   });
  // }
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
                height: 95.0,
              ),
              Container(
                padding: const EdgeInsets.all(13),
                decoration: BoxDecoration(
                  color: Color(0XFFE8B2A6),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,

                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.0,),
              BottomLine()

            ],
          ),
        ),
      ),

    );

  }
}
