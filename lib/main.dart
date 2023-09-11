import 'package:authorization/Screens/fingerprint.dart';
import 'package:flutter/material.dart';
import './Screens/face_id.dart';


void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/faceid',
     routes: {
    '/faceid': (context) => FaceId(),
    '/fingerprint': (context) => FingerPrintScreen(),
  },
  theme: ThemeData(scaffoldBackgroundColor: Colors.white),
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return FaceId();
  }
}
