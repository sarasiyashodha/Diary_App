import 'package:flutter/material.dart';

class Type extends StatelessWidget {

  final Color color;
  final String type;

  const Type({
    super.key, required this.color, required this.type
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        height: 55.0,
        width: 335,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3), // changes the position of the shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(
              left: 15.0,
              right: 15.0,
              top: 10.0,
              bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(12),
                    ),

                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    type,
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        color: Color(0XFF595B62),
                        fontSize: 20.0
                    ),
                  ),

                ],

              ),


              Icon(
                Icons.arrow_forward_ios,
                color: Color(0XFF595B62),
                size: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
