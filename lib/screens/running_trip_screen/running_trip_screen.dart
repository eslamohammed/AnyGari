import 'dart:async';

import 'package:flutter/material.dart';
import 'package:transport/constants/utils/utils.dart';
import '../../constants/utils/colors_package.dart';
import '../message/message.dart';
import '../payment/payment_option.dart';

class RunningTripScreen extends StatefulWidget {
  const RunningTripScreen({Key? key}) : super(key: key);

  @override
  State<RunningTripScreen> createState() => _RunningTripScreenState();
}

class _RunningTripScreenState extends State<RunningTripScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PaymentOptionScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {

    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                // APPBAR
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 80,
                    padding: const EdgeInsets.all(17.0),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios),
                          iconSize: 20,
                        ),
                        Text('Running Trip',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Expanded(child: Container()),
                        TextButton(
                            onPressed: (){
                              showDialog(context: context,
                                  builder: (context){
                                return SimpleDialog(
                                  alignment: Alignment.bottomCenter,
                                  contentPadding: EdgeInsets.all(25), 
                                  title: Text('Do you need to cancel the ride ?'), 
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  children: [
                                    ConstrainedBox(
                                      constraints: BoxConstraints.tightFor(width: deviceWidth , height: deviceHeight * 0.055),
                                      child: PrimaButton.nameofPrimaryButton(context, 'Connect Customer Care', (){}),
                                    ),
                                    SizedBox(height: 5),
                                    ConstrainedBox(
                                      constraints: BoxConstraints.tightFor(width: deviceWidth , height: deviceHeight * 0.055),
                                      child: SecoundaryButton.nameofPrimaryButton(() {
                                        // TODO CANCEL RIDE
                                      }, 'Cancel Ride'),
                                    )
                                  ],
                                );
                              });
                            },
                            child: Text('Cancel',
                              style: TextStyle(
                                color: primaryColor,
                              ),
                            )
                        )
                      ],
                    ),
                  ),
                ),
  
                // FROM & TO
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 15,
                        height: 75,
                        child: Image.asset('assets/images/location.png'),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('2715 Ash Dr. San Jose, South Dakota 83475',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300
                                ),
                              ),
                              SizedBox(height: 30),

                              Text('2118 Thornridge Cir. Syracuse, Connecticut 35624',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                
                Container(
                  height: 485,
                  color: Colors.grey.shade200,
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
                height: 380,
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
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Row(
                            children: [
                              Container(
                                width: 65,
                                height: 65,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.circular(69.0),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(69.0),
                                  child: Image(
                                    color: Colors.grey.shade300,
                                    image: AssetImage(''),
                                    height: 35.0,
                                    width: 65.0,
                                  ),
                                ),
                              ),
                              SizedBox(width: 15,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Joe Sameul',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18
                                    ),
                                  ),
                                  Text('15+ yrs exprience',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0XFF999999),
                                    ),
                                  ),

                                ],
                              ),
                              Expanded(child: Container()),
                              InkWell(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => MessageScreen()));
                                },
                                child: Container(
                                    width: 40,
                                    height: 40,
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.grey.shade300
                                    ),
                                    child: Image(
                                        image: AssetImage('assets/images/chat_fill.png')
                                    )
                                ),
                              ),
                              SizedBox(width: 25,),
                              Container(
                                  width: 40,
                                  height: 40,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.grey.shade300
                                  ),
                                  child: Image(
                                      color: Color(0XFFBF2626),
                                      image: AssetImage('assets/images/phone_fill.png')
                                  )
                              ),
                            ],
                          ),
                        ),

                        // TODO ALIGNMENT of Vechile No.
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // MOBILE NUMBER
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextLabel.nameofTextLabel('Mobile Number'),
                                  SizedBox(height: 2),
                                  Text('+91 225 2252 255',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500
                                    ),
                                  )
                                ],
                              ),

                              // VEHICLE NUMBER
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextLabel.nameofTextLabel('Vehicle No'),
                                  SizedBox(height: 2),
                                  Text('ACD2569',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500
                                    ),
                                  )
                                ],
                              ),

                              // VEHICLE
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextLabel.nameofTextLabel('Vehicle'),
                                  SizedBox(height: 2),
                                  Text('Sedan',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 35),

                        Text('Vehicle Info',
                            style: TextStyle(
                                fontWeight: FontWeight.w500
                            )
                        ),
                        SizedBox(height: 10,),

                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Vehicle Type',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0XFF999999)
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('Mini Van',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0XFF333333),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 55),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Type',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0XFF999999)
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text('A/C',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0XFF333333),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 55),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Price Info',
                              style: TextStyle(
                                  color: Color(0xFF444444),
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            SizedBox(height: 10),

                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Fare',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text('Vehicle and other charges',
                                      style: TextStyle(
                                          color: Color(0xFF999999),
                                          fontSize: 10
                                      ),
                                    )
                                  ],
                                ),
                                Expanded(child: Container()),
                                Text('₹ 1,500',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 20,),

                            Row(
                              children: [
                                Text('Insurance',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Expanded(child: Container()),
                                Text('₹ 250',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                  ),
                                )
                              ],
                            ),

                            SizedBox(height: 20,),

                            Row(
                              children: [
                                Text('Total',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Expanded(child: Container()),
                                Text('₹ 1762',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                  ),
                  ]
                )
              ),
            )
          ]
        ),
      ),
    );
  }
}
