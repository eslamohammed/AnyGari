import 'dart:async';

import 'package:flutter/material.dart';
import 'package:transport/screens/review_screen.dart';

class PaymentConfirmScreen extends StatefulWidget {
  const PaymentConfirmScreen({Key? key}) : super(key: key);

  @override
  State<PaymentConfirmScreen> createState() => _PaymentConfirmScreenState();
}

class _PaymentConfirmScreenState extends State<PaymentConfirmScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ReviewScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 80,
              left: 85,
              right: 85,
              child: Text('Trip Number #25689',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150,
                    height: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(55),
                      child: Image.asset('assets/images/payment_sucess.png'),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text('Successful',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF02AC02)
                    ),
                  ),
                  SizedBox(
                    width: 146,
                    height: 36,
                    child: Text('Payment of ₹350 is comfirmed',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        letterSpacing: 0.5
                      ),
                    ),
                  )
                ],
              ),
            ),
          ]
        ),
      ),
    );
  }
}
