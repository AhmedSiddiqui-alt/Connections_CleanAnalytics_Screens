import 'package:flutter/material.dart';
import 'ConnectionsScreen.dart';

class CleanAndAnalyticsScreen extends StatefulWidget {
  static const routeName = 'SecondScreen';

  @override
  _CleanAndAnalyticsScreenState createState() =>
      _CleanAndAnalyticsScreenState();
}

class _CleanAndAnalyticsScreenState extends State<CleanAndAnalyticsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: LayoutBuilder(
        builder: (ctx, constraints) {
          return SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                    height: constraints.maxHeight * 0.36,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 70,
                          left: 20,
                          child: Container(
                            height: constraints.maxHeight * 0.1,
                            child: Text(
                              'Clean & analytics',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 150,
                            left: 20,
                            child: Container(
                                height: constraints.maxHeight * 0.1,
                                child:
                                    Image.asset('assets/images/mobile.png'))),
                        Positioned(
                            top: 160,
                            left: 80,
                            child: Container(
                              height: constraints.maxHeight * 0.1,
                              child: Text(
                                '137',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            )),
                        Positioned(
                          top: 170,
                          left: 120,
                          child: Container(
                              height: constraints.maxHeight * 0.1,
                              child: Text(
                                'GB Used',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              )),
                        ),
                        Positioned(
                            top: 194,
                            left: 90,
                            child: Container(
                              height: constraints.maxHeight * 0.01,
                              width: constraints.maxWidth * 0.4,
                              decoration: BoxDecoration(
                                  color: Colors.yellow[600],
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomLeft: Radius.circular(20))),
                            )),
                        Positioned(
                            top: 194,
                            left: 220,
                            child: Container(
                              height: constraints.maxHeight * 0.01,
                              width: constraints.maxWidth * 0.2,
                              decoration: BoxDecoration(
                                  color: Colors.blue[600],
                                  borderRadius: BorderRadius.circular(20)),
                            )),
                        Positioned(
                          top: 200,
                          left: 90,
                          child: Container(
                              height: constraints.maxHeight * 0.1,
                              child: Text(
                                '250 GB total',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              )),
                        )
                      ],
                    )),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  height: constraints.maxHeight * 0.65,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(15),
                        height: constraints.maxHeight * 0.1,
                        width: constraints.maxWidth * 1,
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                                left: 20,
                                top: 10,
                                child: Container(
                                  height: constraints.maxHeight * 0.08,
                                  child: Image.asset('assets/images/paper.png'),
                                )),
                            Positioned(
                                left: 90,
                                top: 17,
                                child: Container(
                                  height: constraints.maxHeight * 0.1,
                                  child: Text(
                                    'Junk files',
                                    style: TextStyle(fontSize: 17),
                                  ),
                                )),
                            Positioned(
                                left: 90,
                                top: 40,
                                child: Container(
                                  height: constraints.maxHeight * 0.1,
                                  child: Text(
                                    'Clutter that you can clean no',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                )),
                            Positioned(
                                left: 280,
                                top: 10,
                                child: Container(
                                    height: constraints.maxHeight * 0.07,
                                    child: Icon(
                                      Icons.arrow_right_rounded,
                                      color: Colors.blue[100],
                                      size: 50,
                                    )))
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(15),
                        height: constraints.maxHeight * 0.2,
                        width: constraints.maxWidth * 1,
                        decoration: BoxDecoration(
                          color: Colors.pink[50],
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 10,
                                left: 20,
                                child: Container(
                                  height: constraints.maxHeight * 0.1,
                                  child: Text(
                                    'Duplicate files',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                )),
                            Positioned(
                                top: 25,
                                left: 20,
                                child: Container(
                                  height: constraints.maxHeight * 0.1,
                                  child: Text(
                                    '57 Items',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                )),
                            Positioned(
                              top: 47,
                              left: 20,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Container(
                                      height: constraints.maxHeight * 0.08,
                                      child: Image.asset(
                                          'assets/images/duplicate files/duplicate1.png',
                                          height: 55))),
                            ),
                            Positioned(
                              top: 47,
                              left: 70,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Container(
                                      height: constraints.maxHeight * 0.08,
                                      child: Image.asset(
                                          'assets/images/duplicate files/duplicate2.png'))),
                            ),
                            Positioned(
                              top: 47,
                              left: 140,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Container(
                                      height: constraints.maxHeight * 0.08,
                                      child: Image.asset(
                                          'assets/images/duplicate files/duplicate3.png'))),
                            ),
                            Positioned(
                              top: 47,
                              left: 210,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Container(
                                      height: constraints.maxHeight * 0.08,
                                      child: Image.asset(
                                          'assets/images/duplicate files/duplicate4.png'))),
                            ),
                            Positioned(
                                top: 47,
                                left: 280,
                                child: Container(
                                  height: constraints.maxHeight * 0.08,
                                  width: constraints.maxWidth * 0.13,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.blue[600],
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                          child: Container(
                                        height: constraints.maxHeight * 0.1,
                                        alignment: Alignment.center,
                                        child: Text(
                                          '+',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ))
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(15),
                        height: constraints.maxHeight * 0.2,
                        width: constraints.maxWidth * 1,
                        decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 10,
                                left: 20,
                                child: Container(
                                  height: constraints.maxHeight * 0.1,
                                  child: Text(
                                    'Download files',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                )),
                            Positioned(
                                top: 25,
                                left: 20,
                                child: Container(
                                  height: constraints.maxHeight * 0.1,
                                  child: Text(
                                    '657 Items',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                )),
                            Positioned(
                              top: 47,
                              left: 20,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Container(
                                      height: constraints.maxHeight * 0.08,
                                      width: constraints.maxWidth * 0.12,
                                      child: Image.asset(
                                        'assets/images/download files/downloadfiles1.png',
                                      ))),
                            ),
                            Positioned(
                              top: 47,
                              left: 70,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Container(
                                      width: constraints.maxHeight * 0.08,
                                      child: Image.asset(
                                          'assets/images/download files/downloadfiles2.png'))),
                            ),
                            Positioned(
                                top: 47,
                                left: 140,
                                child: Container(
                                  height: constraints.maxHeight * 0.08,
                                  width: constraints.maxWidth * 0.14,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                    color: Colors.grey[600],
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                          child: Container(
                                              height:
                                                  constraints.maxHeight * 0.1,
                                              alignment: Alignment.center,
                                              child: Image.asset(
                                                  'assets/images/download files/downloadfiles3.png')))
                                    ],
                                  ),
                                )),
                            Positioned(
                                top: 47,
                                left: 210,
                                child: Container(
                                  height: constraints.maxHeight * 0.08,
                                  width: constraints.maxWidth * 0.14,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                    color: Colors.pink[100],
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                          child: Container(
                                              height:
                                                  constraints.maxHeight * 0.1,
                                              alignment: Alignment.center,
                                              child: Image.asset(
                                                  'assets/images/download files/downloadfiles4.png')))
                                    ],
                                  ),
                                )),
                            Positioned(
                                top: 47,
                                left: 280,
                                child: Container(
                                  height: constraints.maxHeight * 0.08,
                                  width: constraints.maxWidth * 0.13,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.blue[600],
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                          child: Container(
                                        height: constraints.maxHeight * 0.1,
                                        alignment: Alignment.center,
                                        child: Text(
                                          '+',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ))
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 4,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
                title: Text('Home'),
                icon: IconButton(
                    icon: Icon(
                      Icons.home,
                      color: Colors.black,
                    ),
                    onPressed: () {})),
            BottomNavigationBarItem(
              icon: IconButton(
                  icon: Icon(
                    Icons.access_time,
                    color: Colors.black,
                  ),
                  onPressed: () {}),
              title: Text('Time'),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                  icon: Icon(
                    Icons.add_box,
                    color: Colors.black,
                  ),
                  onPressed: () {}),
              title: Text('AddBox'),
            ),
            BottomNavigationBarItem(
                title: Text(
                  'Wifi',
                ),
                icon: IconButton(
                    icon: Icon(
                      Icons.wifi,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(ConnectionsScreen.routeName);
                    })),
            BottomNavigationBarItem(
                title: Text('Bar'),
                icon: IconButton(
                    icon: Icon(
                      Icons.bar_chart,
                      color: Colors.blue,
                    ),
                    onPressed: () {})),
          ]),
    );
  }
}
