import 'package:diary_app/screens/profile/search_page.dart';
import 'package:flutter/material.dart';

import '../../components/custom_icon_button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE9D7D0),
      body: Container(
        margin: EdgeInsets.all(21.0),
        child: Column(
          children: [
            SizedBox(
              height: 29.0,
            ),
            Row(
              children: [
                    Row(
                    children: [
                    CircleAvatar(
                    radius: 23.0,
                      backgroundImage: AssetImage('images/profile.png'),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Profile Details',
                          style: TextStyle(
                              fontFamily: 'Epilogue',
                              fontWeight: FontWeight.w600,
                              color: Color(0XFF371B34),
                              fontSize: 14.0
                          ),),
                        Text('Sarina!',
                          style: TextStyle(
                              fontFamily: 'Epilogue',
                              fontWeight: FontWeight.w700,
                              color: Color(0XFFE8B2A6),
                              fontSize: 26.0
                          ),)
                      ],
                    )

                  ],
                ),
                SizedBox(
                  width: 154.0,
                ),
                CustomIconButton(icon: Icons.arrow_back_ios_new, onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchPage()),
                  );
                }),
              ],
            )

          ],
        ),
      ),
    );
  }
}
