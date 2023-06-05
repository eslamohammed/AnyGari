import 'package:flutter/material.dart';
import 'package:transport/constants/utils/utils.dart';
import 'package:transport/screens/payment/payment.dart';

class PaymentOptionScreen extends StatefulWidget {
  const PaymentOptionScreen({Key? key}) : super(key: key);

  @override
  State<PaymentOptionScreen> createState() => _PaymentOptionScreenState();
}

class _PaymentOptionScreenState extends State<PaymentOptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: SafeArea(
        child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 485,
                    color: Colors.grey.shade300,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('Pending Map Integration'),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                child: Container(
                    height: 480,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25)
                        )
                    ),
                    child: ListView(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('How would you like to pay ?',
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text('To continue your ride please add the payment menthod'),
                              SizedBox(height: 20,),
                              PaymentOptionButton.nameofChoosePaymentOptionButton((){}, 'Pay by Cash'),
                              PaymentOptionButton.nameofChoosePaymentOptionButton((){}, 'bKash'),
                              PaymentOptionButton.nameofChoosePaymentOptionButton((){}, 'Nagad'),
                              PaymentOptionButton.nameofChoosePaymentOptionButton((){}, 'Rocket'),
                              PaymentOptionButton.nameofChoosePaymentOptionButton((){}, 'Upay'),
                              PaymentOptionButton.nameofChoosePaymentOptionButton((){}, 'Credit/ Debit Card'),
                            ]
                          ),
                          SizedBox(height: 10),

                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),

                            child: PrimaButton.nameofPrimaryButton(context, 'Continue', (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentScreen()));
                            }),
                          )
                        ]
                    ),
                )
              )
            ]
        ),
      ),
      floatingActionButton: SizedBox(
        width: 40,
        height: 70,
        child: FloatingActionButton.small(
          backgroundColor: Colors.white,
          elevation: 3.0,
          onPressed: () {
            Navigator.pop(context);
            },
          child: Center(
            child: Icon(Icons.arrow_back_ios_new,
              color: Colors.grey,
              size: 18,
            ),
          ),
        ),
      ),
    );
  }
}
