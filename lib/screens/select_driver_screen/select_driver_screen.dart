import 'package:flutter/material.dart';

import 'package:transport/screens/select_driver_screen/select_driver_component.dart';
import '../../constants/utils/utils.dart';
import '../trip_reveiw/trip_review_screen.dart';

class SelectDriverScreen extends StatefulWidget {
  const SelectDriverScreen({Key? key}) : super(key: key);

  @override
  State<SelectDriverScreen> createState() => _SelectDriverScreenState();
}

class _SelectDriverScreenState extends State<SelectDriverScreen> {


  @override
  Widget build(BuildContext context) {

    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView(
        children: [
          // APPBAR
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios),
                iconSize: 16,
              ),
            ),
          ),

          // HEADING & FILTER
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: deviceWidth,
            height: 80,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Bid Runnning',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26
                      ),
                    ),
                    const SizedBox(height: 5),

                    //TIMER FIELD
                    Container(
                      width: 95,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                            color: Colors.grey.shade500,
                            width: 1.0
                        ),
                      ),
                      child: Center(
                        child: Text('20:00Min',
                          style: TextStyle(
                              fontSize: 14
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Expanded(child: Container()),

                // FILTER
                Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.grey.shade300
                    ),
                    child: /*Image(
                      image: AssetImage('assets/images/home_screen/bell_icon.png'))*/
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.filter_alt_outlined,
                        size: 24,
                      ),
                    )
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),

          // TEXT DRIVER, No. Count
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
            child: Row(
              children: [
                Text('Driver',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  ),
                ),
                Expanded(child: Container()),
                RichText(text: TextSpan(
                  children: [
                    TextSpan(
                        text: '${DriverModel.driverList.length}/ ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16
                      )
                    ),
                    TextSpan(
                      text: '20',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16
                      )
                    )
                  ]
                ))
              ],
            ),
          ),
          
          // DRIVER CARD
          DriverDetailCard(),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        PrimaBottomButton.nameofPrimaryButton(context,'HIRE NOW', (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => TripReviewScreen()));
        }),

        SecoundaryBottomButton.nameofSecoundaryButton(context, (){
          Navigator.pop(context);
        },'CANCEL'),
        ],
      ),
    );
  }
}
