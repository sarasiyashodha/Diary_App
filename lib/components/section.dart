import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const Section({
    super.key, required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.0, top: 5.0, bottom: 5.0, right: 30.0),
      width: 351.0,
      height: 112.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color(0XFF95796A),
                      fontSize: 28.0
                  )
              ),
              Text(description,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF898989),
                      fontSize: 14.0
                  )
              )
            ],
          ),
          Image.asset(imagePath),

        ],
      ),
    );
  }
}
