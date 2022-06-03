import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:posttest7_1915016099_salassepkardianto/pages/landing_page.dart';
import 'package:get/get.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Movie App',
      home: SplashScreen(),
    );
  }
}
