import 'package:flutter/material.dart';
import 'package:transport/screens/verification/login.dart';

import '../constants/utils/buttons.dart';
import '../constants/utils/colors_package.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: BackGroundColor,
      body: SafeArea(
        child: Stack(
          children:  [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [

                  // LANDING IMAGE
                  Image(image: AssetImage('assets/images/get_started.png')),
                  SizedBox(height: 60),

                  // TEXT(Now travel has you like and as you wish)
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Text('Now travel has you like\nand as you wish',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // ROUTE TO LOGIN SCREEN
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: PrimaryButton(
                  width: width * 0.65,
                  label: 'GET STARTED',
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const  LoginScreen()));
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}