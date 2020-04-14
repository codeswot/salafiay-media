import 'package:flutter/material.dart';
import 'package:salafiyy_media/components/styles.dart';
import 'package:salafiyy_media/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        accentColor: kPrimaryColor,
        cursorColor: kPrimaryColor,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomeScreen(),
        
      },
    );
  }
}
