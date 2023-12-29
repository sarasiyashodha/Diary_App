import 'package:diary_app/components/custom_icon_button.dart';
import 'package:flutter/material.dart';

import '../../components/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                CustomIconButton(icon: Icons.search, onPressed: (){}),
                SizedBox(
                  width: 10.0,
                ),
                CustomIconButton(icon: Icons.notifications, onPressed: (){})
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: double.maxFinite,
              height: 91.0,
              child: ListView.builder(
                itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return Container(
                      margin: EdgeInsets.only(left: 0.0, top: 0.0, right: 8.0, bottom: 0.0),
                      height: 91.0,
                      width: 51.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                                color: Color(0XFFE8B2A6),
                                fontSize: 12.0
                            ),
                          ),
                          Text('23',
                            style: TextStyle(
                                fontFamily: 'PT Sans',
                                fontWeight: FontWeight.w700,
                                color: Color(0XFFE8B2A6),
                                fontSize: 24.0
                            ),
                          ),
                          Text('Apr',
                            style: TextStyle(
                                fontFamily: 'PT Sans',
                                fontWeight: FontWeight.w400,
                                color: Color(0XFFE8B2A6),
                                fontSize: 12.0
                            ),
                          )

                        ],
                      ),



                    );
                  }
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Text('All',
                  style: TextStyle(
                      fontFamily: 'PT Sans',
                      fontWeight: FontWeight.w700,
                      color: Color(0XFF916A6A),
                      fontSize: 12.0
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Container(
                  width: 325.0,
                  height: 27.0,
                  child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index){
                        return Container(
                          margin: EdgeInsets.only(left: 0.0, top: 0.0, right: 10.0, bottom: 0.0),
                          height: 27.0,
                          width: 72.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0), // Set your desired border radius
                            border: Border.all(
                              color: Color(0XFFEFDED8), // Set your desired border color
                              width: 1.0, // Set your desired border width
                            ),
                          ),
                          child: Center(
                            child: Text('Important',
                              style: TextStyle(
                                  fontFamily: 'PT Sans',
                                  fontWeight: FontWeight.w400,
                                  color: Color(0XFF7C7C7C),
                                  fontSize: 12.0
                              ),
                            ),
                          ),




                        );
                      }
                  ),
                ),



              ],
            ),
            SizedBox(
              height: 120.0,
            ),
            Image.asset('images/create story.png'),
            SizedBox(
              height: 20.0,
            ),
            Text('Create Your Story Here',
                style: TextStyle(
                    fontFamily: 'Epilogue',
                    fontWeight: FontWeight.w500,
                    color: Color(0XFF5B240B),
                    fontSize: 14.0
                )
            ),
            Text('There are no stories for given data',
                style: TextStyle(
                    fontFamily: 'Epilogue',
                    fontWeight: FontWeight.w500,
                    color: Color(0XFFA4A4A4),
                    fontSize: 14.0
                )
            ),
            SizedBox(
              height: 91.0,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                backgroundColor: Color(0XFFE8B2A6),
                  shape: CircleBorder(),

                child: Icon(Icons.add, color: Colors.white, size: 30.0,),
                  onPressed: (){}),
            )


          ],
        ),
      ),
    );
  }
}

