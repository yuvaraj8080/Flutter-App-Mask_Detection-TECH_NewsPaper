import 'package:flutter/material.dart';

import 'Mask Detect App/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor:Colors.blue,
        primarySwatch:Colors.blue,
      ),
      home: Home(),
    );
  }
}


// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<?



// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main() async{
//
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: FirebaseOptions(
//       appId: '1:1074764502905:android:8dc52d7eaf8a440c0201a8',
//       apiKey: 'AIzaSyCwt5mOFrG8cU0JW3wLilNn9SAfH4bbOzE',
//       messagingSenderId: '1074764502905',
//       projectId: 'mask-detection-flutter-app',
//     ),
//   );
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//
//         brightness: Brightness.dark, // Set brightness to light
//         primaryColor: Colors.blue, // Primary color for the app bar, buttons, etc.
//         primarySwatch: Colors.indigo, // Swatch of shades for the primary color
//
//         textTheme: TextTheme(
//           titleSmall:TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
//           titleMedium:TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),
//           titleLarge:TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
//
//           // Define text styles
//           headline4: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.blue),
//           headline3: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.blue),
//           headline2: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue),
//           headline1: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
//           // Titles and subtitles
//
//           // subtitle1: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
//           subtitle2: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Colors.blue),
//           subtitle1: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.blue),
//           // Other text styles as needed
//         ),
//       ),
//       home:(),
//     );
//   }
// }
