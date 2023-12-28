import 'package:diary_app/screens/signup/forgot_password.dart';
import 'package:flutter/material.dart';

import '../../components/button.dart';
import '../../components/custom_icon_button.dart';
import '../../components/text_field.dart';
import '../../constants.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({super.key});

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {

  String password = "";

  final passwordController = TextEditingController();
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE9D7D0),
      body: Container(
        margin: EdgeInsets.all(21.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25.0,
            ),
            CustomIconButton(
                icon: Icons.arrow_back_ios_new,
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                  );
                }),
            Text('New Password', style: ktitleTextStyle,),
            Text('Create a Secure and Strong New Password', style: kDescriptionTextStyle,),
            SizedBox(
              height: 40.0,
            ),
            MyTextField(
              validator: (val) => val?.isEmpty == true
                  ? "Enter a valid password"
                  : null,
              controller: passwordController,
              hintText: 'New Password',
              obscureText: !passwordVisible,
              onChanged: (val) {
                setState(() {
                  password = val;
                });
              },
            ),
            SizedBox(
              height: 40.0,
            ),
            Button(buttonText: 'Confirm',
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewPasswordPage()),
                );
              },)
          ],
        ),
      ),
    );
  }
}
