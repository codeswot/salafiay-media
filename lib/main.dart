import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
String test = "Pressed";
 bool isTest = false;
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            SizedBox(
              width: 5.0,
            ),
            SvgPicture.asset(
              'images/logo.svg',
              width: 54.5,
              height: 23.0,
            ),
            SizedBox(
              width: 30.5,
            ),
            Center(
              child: Text(
                'SALAFIYYA MEDIA',
                style: TextStyle(
                    color: Color(0xfff98150),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){
setState(() {
  isTest = !isTest;
});
            },
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            width: 80.0,
            height: 80.0,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10.0)),
            child: Center(child: Text(isTest ? 'Home Page': test,)),
          ),
        ),
      ),
    );
  }
}
