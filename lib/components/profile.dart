import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
            Text('Good Afternoon,',
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
    );
  }
}
