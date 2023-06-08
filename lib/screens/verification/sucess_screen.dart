import 'dart:async';

import 'package:flutter/material.dart';
import '../../constants/utils/colors_package.dart';
import '../profile_setup/profile_setup_screen.dart';

class SuccessScreen extends StatefulWidget {
  String phoneNumber;
   SuccessScreen({Key? key , required this.phoneNumber}) : super(key: key);

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {

 @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) =>  ProfileSetupScreen(phoneNumber: widget.phoneNumber),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/sucess.png",
                    width: 220,
                    height: 220,
                  ),
                  const SizedBox(height: 40,),

                  const FittedBox(
                    fit: BoxFit.fill,
                    child: Text('Verified Sucessfully',
                      style: TextStyle(
                        color: SuccessfulColor,
                        fontSize: 26,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  const FittedBox(
                    fit: BoxFit.fill,
                    child: Text('Now get your package delivered anywhere\nat anytime',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.5,
                          letterSpacing: 0.4
                      ),
                    ),
                  )
                ],
              )
          ),
        ],
      ),
    );
  }
}
