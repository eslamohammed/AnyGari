import 'dart:async';

import 'package:flutter/material.dart';

import '../../constants/utils/colors_package.dart';
import '../select_driver_screen/select_driver_screen.dart';


class SearchingScreen extends StatefulWidget {
  const SearchingScreen({Key? key}) : super(key: key);

  @override
  State<SearchingScreen> createState() => _SearchingScreenState();
}

class _SearchingScreenState extends State<SearchingScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => SelectDriverScreen(),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                CircularProgressIndicator(
                  color: Colors.white,
                ),
                Text('Searching',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w500
                  ),
                ),
                SizedBox(height: 10),
                Text('Please be paitent connecting with your bid',
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w400
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 40),
              child: TextButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Text('Cancel Search',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400
                    ),
                  )),
            ),
          )
        ]
      ),
    );
  }
}
