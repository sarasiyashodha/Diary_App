import 'package:diary_app/screens/profile/profile_page.dart';
import 'package:flutter/material.dart';

import '../../components/custom_icon_button.dart';
import '../../components/profile.dart';
import '../../components/section.dart';
import 'home_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

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
                Profile(),
                SizedBox(
                  width: 75.0,
                ),
                CustomIconButton(icon: Icons.arrow_back_ios_new, onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                }),
                SizedBox(
                  width: 10.0,
                ),
                CustomIconButton(icon: Icons.notifications, onPressed: (){})
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            Section(title: 'Profile', description: 'View your profile', imagePath: 'images/create story.png',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            Section(title: 'Notification', description: 'Water is life. Water is a basic', imagePath: 'images/clock.png',
              onTap: (){},
            ),
            SizedBox(
              height: 20.0,
            ),
            Section(title: 'About us', description: 'View your profile', imagePath: 'images/about.png',
              onTap: (){},
            ),
            SizedBox(
              height: 20.0,
            ),
            Section(title: 'Logout', description: 'View your profile', imagePath: 'images/logout.png',
              onTap: (){},
            )

          ],
        ),
      ),
    );
  }
}

