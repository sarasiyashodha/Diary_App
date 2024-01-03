import 'package:diary_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

// import 'package:diary_app/services/api_service.dart';
// import 'package:diary_app/models/exception_model.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   try {
//     // Code that might throw an exception
//     throw Exception("Test Exception");
//   } catch (e) {
//     // Create an instance of ExceptionModel
//     ExceptionModel exception = ExceptionModel(
//       methodName: "methodName",
//       appVersion: "appVersion",
//       deviceId: "deviceId",
//       message: "message",
//       details: "details",
//       platform: "platform",
//       user: "user",
//       inputs: "inputs",
//     );
//
//     // Call the API to send the exception data
//     await ApiService().sendException(exception);
//   }
// }

