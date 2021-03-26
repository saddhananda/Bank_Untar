import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/splash/splash_screen.dart';
// import 'package:flutter_application_1/screens/untar/untar_screen.dart';
// import 'package:flutter_application_1/screens/profile/profile_screen.dart';
// import 'package:flutter_application_1/screens/splash/splash_screen.dart';
// import 'package:flutter_application_1/screens/splash/splash_screen.dart';
// import 'profile/profile_screen.dart';
import 'routes.dart';
// import 'screens/transfer/transfer_screen.dart';
import 'theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      // initialRoute: TransferScreen.routeName,
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
