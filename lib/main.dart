import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xfff98150),
        accentColor: Color(0xfff98150),
        cursorColor: Color(0xfff98150),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
      },
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
    final deviceHeight = MediaQuery.of(context).size.width;
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
            onPressed: () {
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
        child: Column(
          children: <Widget>[
            Container(
              child: Form(
                child: Container(
                  margin: EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                  ),
                  width: double.infinity,
                  height: 45,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.all(8.0),
                      
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: 10.0,
            // ),
            Container(
              height: deviceHeight * 0.5,
              child: ListView(
                children: <Widget>[],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
