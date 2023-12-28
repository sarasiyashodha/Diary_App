import 'package:flutter/material.dart';

class BottomLine extends StatelessWidget {
  const BottomLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'I Agree to the ',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: Color(0XFFB3B1B0),
                fontSize: 12.0),
          ),
          GestureDetector(
            onTap: (){
              print('tapped');
            },
            child: Text(
              'Terms of Service ',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Color(0XFFFD9340),
                  fontSize: 12.0),
            ),
          ),
          Text(
            'and ',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: Color(0XFFB3B1B0),
                fontSize: 12.0),
          ),
          GestureDetector(
            onTap: (){
              print('tapped');
            },
            child: Text(
              'Privacy Policy.',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Color(0XFFFD9340),
                  fontSize: 12.0),
            ),
          ),
        ],
      ),
    );
  }
}