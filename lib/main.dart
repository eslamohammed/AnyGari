import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:transport/screens/landing_screen.dart';

import 'constants/utils/colors_package.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); //we had to ignore an some Ops
  SharedPreferences.getInstance();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false, // to remove Banner
      theme: ThemeData(
          textTheme: const TextTheme(
              headline1: TextStyle(
                color: TextColor,
              ),
              headline2: TextStyle(color: TextColor),
              bodyText1: TextStyle(color: TextColor)),
          fontFamily: 'Poppins',
          scaffoldBackgroundColor: BackGroundColor,
          appBarTheme: const AppBarTheme(
              elevation: 0,
              titleSpacing: 0,
              color: primaryColor,
              titleTextStyle: TextStyle(fontSize: 18)),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: primaryColor,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                side: BorderSide.none),
          ))),
      home: LandingScreen(),
    );
  }
}
