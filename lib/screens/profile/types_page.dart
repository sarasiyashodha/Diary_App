import 'package:diary_app/components/custom_icon_button.dart';
import 'package:diary_app/components/type.dart';
import 'package:diary_app/screens/profile/story_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home_page.dart';

class TypesPage extends StatefulWidget {
  const TypesPage({super.key});

  @override
  State<TypesPage> createState() => _TypesPageState();
}

class _TypesPageState extends State<TypesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE9D7D0),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 17.0, bottom: 17.0),
            height: double.maxFinite, width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.0), // Set your desired border radius
              border: Border.all(
                color: Color(0XFFB4A7A2), // Set your desired border color
                width: 1.0, // Set your desired border width
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 20.0,
                  left: 20.0,
                  child: CustomIconButton(icon: Icons.arrow_back_ios_new,
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      }),
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: Lottie.asset('images/Email_Verification.json', height: 188.0, width: 308.0)),
                Positioned(
                    top: 20.0,
                    left: 300.0,
                    child: Container(
                      margin: EdgeInsets.only(left: 0.0, top: 0.0, right: 8.0, bottom: 0.0),
                      height: 91.0,
                      width: 51.0,
                      decoration: BoxDecoration(
                        color: Color(0XFFE8B2A6),
                        borderRadius: BorderRadius.circular(18.0), // Set your desired border radius
                        border: Border.all(
                          color: Color(0XFFE8B2A6), // Set your desired border color
                          width: 1.0, // Set your desired border width
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Tue',
                            style: TextStyle(
                                fontFamily: 'PT Sans',
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 12.0
                            ),
                          ),
                          Text('23',
                            style: TextStyle(
                                fontFamily: 'PT Sans',
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                                fontSize: 24.0
                            ),
                          ),
                          Text('Apr',
                            style: TextStyle(
                                fontFamily: 'PT Sans',
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: 12.0
                            ),
                          )

                        ],
                      ),



                    )
                ),
                Positioned(
                    top: 109.0,
                    left: 20.0,
                    child: Text('Type',
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w800,
                          color: Color(0XFF35383E),
                          fontSize: 30.0
                      ),
                    )
                ),
                Positioned(
                    top: 155.0,
                    left: 20.0,
                    child: Text('Choose your own story',
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          color: Color(0XFFB2B2B2),
                          fontSize: 20.0
                      ),
                    )
                ),
                Positioned(
                  top: 230.0,
                  left: 20.0,
                  child: Column(
                    children: [
                      Type(color: Color(0XFFFFB4EA), type: 'Story', onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => StoryPage()),
                        );
                      },),
                      SizedBox(
                        height: 20.0,
                      ),
                      Type(color: Color(0XFF8CB5BF), type: 'Top Secret',
                      onTap: (){},
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Type(color: Color(0XFFE8B2A6), type: 'Notes',
                        onTap: (){},

                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Type(color: Color(0XFFFFEAB6), type: 'Other',
                        onTap: (){},

                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 216.0,
              left: -15.0,
              child: Image.asset('images/dots.png', width: 60.0, height: 60.0,)),
          Positioned(
              top: 480.0,
              left: -15.0,
              child: Image.asset('images/dots.png', width: 60.0, height: 60.0,)),
          Positioned(
              top: 700.0,
              left: -15.0,
              child: Image.asset('images/dots.png', width: 60.0, height: 60.0,))


        ],
      ),
    );
  }
}

