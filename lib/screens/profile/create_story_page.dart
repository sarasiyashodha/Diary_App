import 'package:diary_app/screens/profile/types_page.dart';
import 'package:flutter/material.dart';

import '../../components/custom_icon_button.dart';

class CreateStoryPage extends StatefulWidget {
  const CreateStoryPage({super.key});

  @override
  State<CreateStoryPage> createState() => _CreateStoryPageState();
}

class _CreateStoryPageState extends State<CreateStoryPage> {
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
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIconButton(icon: Icons.arrow_back_ios_new,
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => TypesPage()),
                            );
                          }),
                      Row(
                        children: [
                          Image.asset('images/clipboardtext.png', ),
                          SizedBox(
                            width: 25.0,
                          ),
                          Image.asset('images/heart.png', ),
                          SizedBox(
                            width: 25.0,
                          ),
                          Image.asset('images/directboxsend.png', ),
                        ],
                      )
                    ],

                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('3, Aug, 2023',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            color: Color(0XFF7C7C7C),
                            fontSize: 16.0
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 6.0, top: 10.0, right: 6.0, bottom: 10.0),
                        decoration: BoxDecoration(
                          color: Color(0XFFE8B2A6),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            "Top Secret",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                        ),

                      )

                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Expanded(
                      child: TextField(
                        decoration: InputDecoration(hintText: "Type your story",
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          fontFamily: 'Sarabun',
                          fontSize: 18.0,
                          color: Color(0XFF292929),
                          fontWeight: FontWeight.w400,
                        ),
                        scrollPadding: EdgeInsets.all(20.0),
                        keyboardType: TextInputType.multiline,
                        maxLines: 100,
                        autofocus: true,
                      )
                  )
                ],
              ),
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
