import 'package:flutter/material.dart';
import 'package:transport/constants/utils/utils.dart';
import 'package:transport/screens/message/message.dart';

import '../../constants/utils/colors_package.dart';
import '../running_trip_screen/running_trip_screen.dart';

class TripReviewScreen extends StatefulWidget {
  const TripReviewScreen({Key? key}) : super(key: key);

  @override
  State<TripReviewScreen> createState() => _TripReviewScreenState();
}

class _TripReviewScreenState extends State<TripReviewScreen> {

  bool _isVisible = false;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }


  @override
  Widget build(BuildContext context) {

    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // APPBAR
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: 55,
                  color: BackGroundColor,
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios),
                        iconSize: 16,
                      ),
                      Text('Trip Review',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),

              // FROM & TO
              Container(
                color: BackGroundColor,
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
              SizedBox(height: 10),

              // DRIVER INFO
              Container(
                color: BackGroundColor,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Driver Info',
                      style: TextStyle(
                        color: Color(0xFF444444),
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 10,),

                    Row(
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
                            InkWell(
                              onTap:(){
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => RunningTripScreen()));
                              },
                              child: Text('Joe Sameul',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18
                                ),
                              ),
                            ),
                            Text('15th yrs exprience',
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
                                  image: AssetImage('assets/images/chat_fill.png'))
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
                                image: AssetImage('assets/images/phone_fill.png'))
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),

                    Text('Vehicle Info',
                      style: TextStyle(
                        fontWeight: FontWeight.w500
                      )
                    ),
                    SizedBox(height: 10,),

                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
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
                          mainAxisAlignment: MainAxisAlignment.start,
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
                    )

                  ],
                ),
              ),
              SizedBox(height: 10),

              // PRICE INFO
              Container(
                color: BackGroundColor,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Price Info',
                      style: TextStyle(
                          color: Color(0xFF444444),
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 20),

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
                    SizedBox(height: 20,),

                    Visibility(
                      visible: _isVisible,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text('Coupon',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Expanded(child: Container()),
                                Text('-₹ 1762',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 20),

                            Row(
                              children: [
                                Text('Pay',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Expanded(child: Container()),
                                Text('₹ 800',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),

              // APPLY COUPON CODE
              Container(
                color: BackGroundColor,
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                                child: Image.asset('assets/images/price_tag_line.png',
                                  width: 14,
                                ),
                            ),
                            TextSpan(
                              text: '  Apply coupon code',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black
                              )
                            )
                          ]
                        )
                    ),
                    Expanded(child: Container()),

                    TextButton  (
                        onPressed: (){
                          showModalBottomSheet(
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25)
                                )
                              ),
                              builder: (BuildContext context) =>
                              Container(
                                height: 280,
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                child: ListView(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                      child: RichText(
                                          text: TextSpan(
                                              children: [
                                                WidgetSpan(
                                                  child: Image.asset('assets/images/price_tag_line.png',
                                                    width: 14,
                                                  ),
                                                ),
                                                TextSpan(
                                                    text: '  Apply coupon code',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black
                                                    )
                                                )
                                              ]
                                          )
                                      ),
                                    ),
                                    SizedBox(height: 10),

                                    ListTile(
                                      leading: Container(
                                          width: 45,
                                          height: 45,
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(25),
                                              color: Colors.grey.shade300
                                          ),
                                          child: Image(
                                              image: AssetImage('assets/images/price_tag_line.png'))
                                      ),
                                      title: Text('50% on first ride',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black
                                        ),
                                      ),
                                      subtitle: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Get upto 50% off on your ride',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.black
                                            ),
                                          ),
                                          Text('Terms & Condition Applies',
                                            style: TextStyle(
                                              fontSize: 8,
                                              color: Colors.grey
                                            ),
                                          )
                                        ],
                                      ),
                                      trailing: TextButton(
                                        onPressed: () {
                                          setState(() {
                                            _isVisible =!_isVisible;
                                          });
                                        },
                                        child: Text(_isVisible ? 'Applied' : 'Apply',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: _isVisible ? Colors.green : primaryColor
                                          ),
                                        ),
                                      ),
                                    ),
                                    Divider(),
                                    ListTile(
                                      leading: Container(
                                          width: 45,
                                          height: 45,
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(25),
                                              color: Colors.grey.shade300
                                          ),
                                          child: Image(
                                              image: AssetImage('assets/images/price_tag_line.png'))
                                      ),
                                      title: Text('50% on first ride',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black
                                        ),
                                      ),
                                      subtitle: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Get upto 50% off on your ride',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.black
                                            ),
                                          ),
                                          Text('Terms & Condition Applies',
                                            style: TextStyle(
                                                fontSize: 8,
                                                color: Colors.grey
                                            ),
                                          )
                                        ],
                                      ),
                                      trailing: TextButton(
                                        onPressed: () {  },
                                        child: Text('Apply',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: primaryColor
                                          ),
                                        ),
                                      ),
                                    ),
                                    Divider(),
                                    ListTile(
                                      leading: Container(
                                          width: 45,
                                          height: 45,
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(25),
                                              color: Colors.grey.shade300
                                          ),
                                          child: Image(
                                              image: AssetImage('assets/images/price_tag_line.png'))
                                      ),
                                      title: Text('50% on first ride',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black
                                        ),
                                      ),
                                      subtitle: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Get upto 50% off on your ride',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.black
                                            ),
                                          ),
                                          Text('Terms & Condition Applies',
                                            style: TextStyle(
                                                fontSize: 8,
                                                color: Colors.grey
                                            ),
                                          )
                                        ],
                                      ),
                                      trailing: TextButton(
                                        onPressed: () {  },
                                        child: Text('Apply',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: primaryColor
                                          ),
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              )
                          );
                        },
                        child: Text('Apply',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0XFF556EF2)
                          ),
                        )
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: deviceWidth,
            height: 55,
            child: PrimaBottomButton.nameofPrimaryButton(context,'CONFIRM', (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => RunningTripScreen()));
            }
            ),
          ),

          SizedBox(
            width: deviceWidth,
            height: 55,
            child: SecoundaryBottomButton.nameofSecoundaryButton(context, (){
              print('Cancel');
              Navigator.pop(context);
            }, 'CANCEL'),
          ),
        ],
      ),
    );
  }
}
