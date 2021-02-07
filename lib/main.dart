import 'package:flutter/material.dart';
import 'screens/ConnectionsScreen.dart';
import 'screens/CleanAndAnalyticsScreen.dart';
import 'package:flutter/services.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
  DeviceOrientation.portraitUp,
  DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ConnectionsScreen(),
      routes: {
        ConnectionsScreen.routeName: (ctx) => ConnectionsScreen(),
        CleanAndAnalyticsScreen.routeName: (ctx) => CleanAndAnalyticsScreen(),
      },
    );
  }
}
