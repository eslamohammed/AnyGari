import 'package:flutter/material.dart';
import 'package:transport/constants/utils/utils.dart';

import '../../constants/utils/colors_package.dart';
import '../home/home_screen.dart';
import '../notification/notification_screen.dart';

class AnotherPaymentScreen extends StatefulWidget {
  const AnotherPaymentScreen({Key? key}) : super(key: key);

  @override
  State<AnotherPaymentScreen> createState() => _AnotherPaymentScreenState();
}

class _AnotherPaymentScreenState extends State<AnotherPaymentScreen> {
  @override
  Widget build(BuildContext context) {

    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios),
                  iconSize: 20,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Payment',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                      )
                  ),
                  Text('Please choose your payment method',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      )
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  ChoosePaymentButton.nameofChoosePaymentOptionButton((){}, 'Pay by cash'),
                  Divider(thickness: 1),
                  ChoosePaymentButton.nameofChoosePaymentOptionButton((){}, 'bKash'),
                  Divider(thickness: 1),
                  ChoosePaymentButton.nameofChoosePaymentOptionButton((){}, 'Nagad'),
                  Divider(thickness: 1),
                  ChoosePaymentButton.nameofChoosePaymentOptionButton((){}, 'Rocket'),
                  Divider(thickness: 1),
                  ChoosePaymentButton.nameofChoosePaymentOptionButton((){}, 'Upay'),
                  Divider(thickness: 1),
                  ChoosePaymentButton.nameofChoosePaymentOptionButton((){}, 'Credit/ Debit'),
                  Divider(thickness: 1),

                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        // padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade200,
                  blurStyle: BlurStyle.outer,
                  blurRadius: 10
              )
            ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: const Image(image: AssetImage('assets/images/home.png'),
                height: 20,
                width: 20,
                color: primaryColor,
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> NotificationScreen()));
              },
              child: Stack(
                  children: [
                    const Image(
                      image: AssetImage('assets/images/notification_fill.png'),
                      height: 20,
                      width: 20,
                      color: Colors.grey,
                    ),
                    Positioned(
                      top: 0,
                      right: 1.0,
                      child: SizedBox(
                        width: 10,
                        height: 10,
                        child: FloatingActionButton.small(
                            heroTag: 'countNotification',
                            backgroundColor: SecoundaryVariantColor,
                            elevation: 3.0,
                            onPressed: () {},
                            child: Text('02',
                              style: TextStyle(
                                  fontSize: 6
                              ),
                            )
                        ),
                      ),
                    ),
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}
