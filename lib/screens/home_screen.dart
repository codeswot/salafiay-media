import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salafiyy_media/components/styles.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kWhiteColor,
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
                    color: kPrimaryColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              setState(() {});
            },
            icon: Icon(
              Icons.menu,
              color: kBlackColor,
            ),
          )
        ],
        backgroundColor: kWhiteColor,
        elevation: 0.0,
      ),
      body: Container(
        margin: EdgeInsets.only(
            // left: 10.0,
            // right: 10.0,
            ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 25.0,
            ),
            Expanded(
              flex: 0,
              child: Container(
                child: Form(
                  child: Container(
                    margin: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: TextFormField(
                      textInputAction: TextInputAction.search,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search',
                        contentPadding: EdgeInsets.all(8.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                      ),
                    ),
                    width: double.infinity,
                    height: 45,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Text(
                'Sheikh Bashi Nuhu Assalafy',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Expanded(
              flex: 1,
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 10.0, right: 10.0),
                    padding: EdgeInsets.only(
                      top: 15.0,
                      left: 20.0,
                      right: 15.0,
                    ),
                    width: double.infinity,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: kBlueColor,
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          right: 0.0,
                          child: SvgPicture.asset(
                            'images/logo.svg',
                            color: kWhiteColor,
                            width: 60.0,
                            height: 25.5,
                          ),
                        ),
                        Positioned.fill(
                          bottom: 10.0,
                          child: Container(
                            margin: EdgeInsets.only(),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Complete ',
                                  style: TextStyle(
                                    color: kWhiteColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  'Lectures & Books Audio App',
                                  style: TextStyle(
                                    color: kWhiteColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 10.0,
                            ),
                            DetailContainer(
                              image: 'images/img01.png',
                              albumNumber: '84',
                              albumName: 'RIYADUS SALIHIN',
                              onTap: () {},
                            ),
                            DetailContainer(
                              image: 'images/img01.png',
                              albumNumber: '94',
                              albumName: 'Bulugul MaRam',
                              onTap: () {},
                            ),
                            DetailContainer(
                              image: 'images/img01.png',
                              albumNumber: '24',
                              albumName: 'SUNANUT TIRMUZI',
                              onTap: () {},
                            ),
                            DetailContainer(
                              image: 'images/img01.png',
                              albumNumber: '204',
                              albumName: 'ADABUL MUFRAD',
                              onTap: () {
                                print('tapped');
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 40,
                          ),
                          Container(
                            width: 125,
                            height: 77,
                            color: kBlueColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailContainer extends StatelessWidget {
  const DetailContainer({
    Key key,
    this.onTap,
    this.albumName,
    this.albumNumber,
    this.image,
  }) : super(key: key);
  final Function onTap;
  final String image;
  final String albumNumber;
  final String albumName;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 151,
        width: 97.5,
        margin: EdgeInsets.only(right: 10.0),
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(
              10.0,
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 9.0,
                offset: Offset(0.0, 8.0),
                color: kShadowColor.withOpacity(0.05),
              )
            ]),
        child: Stack(
          children: <Widget>[
            Image.asset(
              image,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0.0,
              child: Container(
                padding: EdgeInsets.only(top: 5.0),
                child: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      albumNumber,
                      style: TextStyle(
                        color: kWhiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 9.0,
                      ),
                    )),
                width: 97.5,
                height: 73.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: kPrimaryColor,
                ),
              ),
            ),
            Positioned(
              bottom: -0.6,
              child: Container(
                child: Center(
                  child: Text(
                    albumName,
                    style: TextStyle(
                      fontSize: 9.0,
                    ),
                  ),
                ),
                width: 97.5,
                height: 53.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: kWhiteColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
