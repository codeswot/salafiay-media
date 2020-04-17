import 'package:flutter/material.dart';

class InfoDrawer extends StatefulWidget {
  const InfoDrawer({
    Key key,
  });

  @override
  _InfoDrawerState createState() => _InfoDrawerState();
}

@override
class _InfoDrawerState extends State<InfoDrawer> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
              child: Text(
            'ABOUT',
            style: TextStyle(fontSize: 35.0),
          )),
        ],
      ),
    ));
  }
}
