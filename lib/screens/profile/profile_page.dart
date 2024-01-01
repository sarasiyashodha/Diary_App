import 'package:diary_app/screens/profile/search_page.dart';
import 'package:flutter/material.dart';

import '../../components/button.dart';
import '../../components/custom_icon_button.dart';
import '../../components/custom_text_field.dart';
import '../../components/text_field.dart';
import 'home_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  String firstname = "";
  String lastname = "";
  String nickname = "";
  String email = "";
  String password = "";
  String date = "";
  String gender = "";
  String error = "";

  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final nicknameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final dateController = TextEditingController();
  final genderController = TextEditingController();
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE9D7D0),
      body: Container(
        margin: EdgeInsets.all(21.0),
        child: SingleChildScrollView(
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
              ),
              SizedBox(
                height: 60.0,
              ),
              MyTextField(
                validator: (val) => val?.isEmpty == true
                    ? "Enter a valid name"
                    : null,
                controller: firstnameController,
                hintText: 'Sarina',
                obscureText: false,
                onChanged: (val) {
                  setState(() {
                    firstname = val;
                  });
                },
              ),
              SizedBox(height: 15,),
              MyTextField(
                validator: (val) => val?.isEmpty == true
                    ? "Enter a valid name"
                    : null,
                controller: lastnameController,
                hintText: 'Nimasha',
                obscureText: false,
                onChanged: (val) {
                  setState(() {
                    lastname = val;
                  });
                },
              ),
              SizedBox(height: 15,),
              MyTextField(
                validator: (val) => val?.isEmpty == true
                    ? "Enter a valid name"
                    : null,
                controller: nicknameController,
                hintText: 'Sanyo',
                obscureText: false,
                onChanged: (val) {
                  setState(() {
                    nickname = val;
                  });
                },
              ),
              SizedBox(height: 15,),
              MyTextField(
                validator: (val) => val?.isEmpty == true
                    ? "Enter a valid email"
                    : null,
                controller: emailController,
                hintText: 'sany@gmail.com',
                obscureText: false,
                onChanged: (val) {
                  setState(() {
                    email = val;
                  });
                },
              ),
              SizedBox(height: 15,),
              MyTextField(
                validator: (val) => val?.isEmpty == true
                    ? "Enter a valid password"
                    : null,
                controller: passwordController,
                hintText: '**********',
                obscureText: !passwordVisible,
                onChanged: (val) {
                  setState(() {
                    password = val;
                  });
                },
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  CustomTextField(
                    validator: (val) => val?.isEmpty == true
                        ? "Enter a valid date"
                        : null,
                    controller: dateController,
                    hintText: 'DD/MM/YY',
                    obscureText: false,
                    icon: Icons.calendar_month,
                    onChanged: (val) {
                      setState(() {
                        date = val;
                      });
                    },
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  CustomTextField(
                    validator: (val) => val?.isEmpty == true
                        ? "Enter a gender"
                        : null,
                    controller: genderController,
                    hintText: 'Gender',
                    obscureText: false,
                    onChanged: (val) {
                      setState(() {
                        gender = val;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Button(buttonText: 'Open',
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );

                },),



            ],
          ),
        ),
      ),
    );
  }
}
