import 'package:flutter/material.dart';
import 'CleanAndAnalyticsScreen.dart';

class ConnectionsScreen extends StatefulWidget {
  static const routeName = 'firstScreen';
  @override
  _ConnectionsScreenState createState() => _ConnectionsScreenState();
}

final List connectionLists = [
  {'image': 'assets/images/box.png', 'title': 'Box'},
  {'image': 'assets/images/onedrive.png', 'title': 'OneDrive'},
  {'image': 'assets/images/ftp (1).png', 'title': 'FTP Server'},
  {'image': 'assets/images/ftp - Copy.png', 'title': 'SFTP Server'},
  {'image': 'assets/images/windows.png', 'title': 'Windows SMB'},
];

class _ConnectionsScreenState extends State<ConnectionsScreen> {
  final Appbar = AppBar(
    leading: IconButton(
      color: Colors.blue,
      icon: Icon(Icons.arrow_back),
      onPressed: () {},
    ),
    title: Text(
      'Connections',
      style: TextStyle(color: Colors.black, fontSize: 20),
    ),
    backgroundColor: Colors.white,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar,
      body: LayoutBuilder(
        builder: (ctx, constraints) {
          return Container(
              height: (MediaQuery.of(context).size.height -
                      Appbar.preferredSize.height -
                      MediaQuery.of(context).padding.top) *
                  1,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(15),
                        height: constraints.maxHeight * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                                height: constraints.maxHeight * 0.08,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      height: constraints.maxHeight * 0.04,
                                      margin: EdgeInsets.only(left: 4),
                                      child: Text(
                                        'From Computer',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                        height: constraints.maxHeight * 0.04,
                                        margin: EdgeInsets.only(left: 4),
                                        child: Text(
                                          'Connect computer via address bar',
                                          style: TextStyle(
                                            fontSize: 13,
                                          ),
                                        ))
                                  ],
                                )),
                            Container(
                                margin: EdgeInsets.only(left: 40),
                                alignment: Alignment.centerRight,
                                height: constraints.maxHeight * 0.1,
                                child:
                                    Image.asset('assets/images/computer.png'))
                          ],
                        )),
                    Container(
                      height: constraints.maxHeight * 0.05,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 10, left: 20,bottom:10),
                      child: Text(
                        'Import from cloud storage',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          // margin: EdgeInsets.only(left: 20),
                          height: constraints.maxHeight * 0.09,
                          width: constraints.maxWidth * 0.4,
                          decoration: BoxDecoration(
                              color: Colors.blue[100],
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                height: constraints.maxHeight * 0.04,
                                child: Image.asset('assets/images/dropbox.png'),
                              ),
                              Container(
                                height: constraints.maxHeight * 0.04,
                                child: Text('Dropbox'),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // margin: EdgeInsets.only(left: 20),
                          height: constraints.maxHeight * 0.09,
                          width: constraints.maxWidth * 0.4,
                          decoration: BoxDecoration(
                              color: Colors.cyan[100],
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                height: constraints.maxHeight * 0.04,
                                child: Image.asset(
                                    'assets/images/googledrive.png'),
                              ),
                              Container(
                                height: constraints.maxHeight * 0.04,
                                child: Text('Google Drive'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: constraints.maxHeight * 0.05,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top:20,left: 20),
                      child: Text(
                        'Add Connection',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Container(
                      height: constraints.maxHeight * 0.44,
                      child: ListView.builder(
                        itemBuilder: ((ctx, index) {
                          return ListTile(
                            leading:
                                Image.asset(connectionLists[index]['image']),
                            title: Text(connectionLists[index]['title']),
                            trailing: Icon(
                              Icons.arrow_right_rounded,
                              size: 50,
                              color: Colors.blue[100],
                            ),
                          );
                        }),
                        itemCount: connectionLists.length,
                      ),
                    )
                  ],
                ),
              ));
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 3,
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
                      color: Colors.blue,
                    ),
                    onPressed: () {})),
            BottomNavigationBarItem(
                title: Text('Bar'),
                icon: IconButton(
                    icon: Icon(
                      Icons.bar_chart,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(
                          CleanAndAnalyticsScreen.routeName);
                    })),
          ]),
    );
  }
}
