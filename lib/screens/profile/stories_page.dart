import 'package:device_info_plus/device_info_plus.dart';
import 'package:diary_app/screens/profile/search_page.dart';
import 'package:flutter/material.dart';

import '../../components/custom_icon_button.dart';
import '../../components/profile.dart';
import '../../lists.dart';

class StoriesPage extends StatefulWidget {
  const StoriesPage({super.key});

  @override
  State<StoriesPage> createState() => _StoriesPageState();
}

class _StoriesPageState extends State<StoriesPage> {
  Lists list = Lists();

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
                CustomIconButton(icon: Icons.search, onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchPage()),
                  );
                }),
                SizedBox(
                  width: 10.0,
                ),
                CustomIconButton(icon: Icons.notifications,
                  onPressed: () async {
                    String uniqueId = await getAndroidDeviceId();
                    print('Android Device ID: $uniqueId');
                  },
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: double.maxFinite,
              height: 91.0,
              child: ListView.builder(
                  itemCount: list.dayNames.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    bool isFirstElement = index == 0;
                    return Container(
                      margin: EdgeInsets.only(left: 0.0, top: 0.0, right: 8.0, bottom: 0.0),
                      height: 91.0,
                      width: 51.0,
                      decoration: BoxDecoration(
                        color: isFirstElement ? Color(0XFFE8B2A6) : Colors.white,
                        borderRadius: BorderRadius.circular(18.0), // Set your desired border radius
                        border: Border.all(
                          color: Color(0XFFE8B2A6), // Set your desired border color
                          width: 1.0, // Set your desired border width
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('${list.dayNames[index]}',
                            style: TextStyle(
                                fontFamily: 'PT Sans',
                                fontWeight: FontWeight.w400,
                                color: isFirstElement ? Colors.white : Color(0XFFE8B2A6),
                                fontSize: 12.0
                            ),
                          ),
                          Text('${list.days[index]}',
                            style: TextStyle(
                                fontFamily: 'PT Sans',
                                fontWeight: FontWeight.w700,
                                color: isFirstElement ? Colors.white : Color(0XFFE8B2A6),
                                fontSize: 24.0
                            ),
                          ),
                          Text('Apr',
                            style: TextStyle(
                                fontFamily: 'PT Sans',
                                fontWeight: FontWeight.w400,
                                color: isFirstElement ? Colors.white : Color(0XFFE8B2A6),
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
                      itemCount: list.categories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index){
                        String category = list.categories[index];
                        return Container(
                          margin: EdgeInsets.only(left: 0.0, top: 0.0, right: 10.0, bottom: 0.0),
                          height: 27.0,
                          width: category.length * 8.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0), // Set your desired border radius
                            border: Border.all(
                              color: Color(0XFFEFDED8), // Set your desired border color
                              width: 1.0, // Set your desired border width
                            ),
                          ),
                          child: Center(
                            child: Text(category,
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
              height: 20.0,
            ),
            Container(
              height: 490.0,
              width: 350.0,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: 50,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFD8F4),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          child: Text(
                            "To-do list",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                        ),


                      ],
                    ),
                  );
                },
              )
            )
          ],
        ),

      ),
    );
  }
  Future<String> getAndroidDeviceId() async {
    String uniqueId = '';
    try {
      var androidInfo = await DeviceInfoPlugin().androidInfo;
      uniqueId = androidInfo.id;
    } catch (e) {
      print('Error getting Android device ID: $e');
    }
    return uniqueId;
  }
}
