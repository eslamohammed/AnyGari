import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';
import 'package:transport/screens/location/choose_location/address_book/address_book_screen.dart';

import '../../constants/utils/colors_package.dart';
import '../../constants/utils/utils.dart';
import 'driver_request_searching_screen.dart';

class DriverRequestScreen extends StatefulWidget {
  const DriverRequestScreen({Key? key}) : super(key: key);

  @override
  State<DriverRequestScreen> createState() => _DriverRequestScreenState();
}

class _DriverRequestScreenState extends State<DriverRequestScreen> {

  final TextEditingController pickupDriverRequestController= TextEditingController();
  final TextEditingController whereToDriverRequestController= TextEditingController();
  final TextEditingController goodTypeDriverRequestController= TextEditingController();
  final TextEditingController insuranceDriverRequestController= TextEditingController();
  @override
  Widget build(BuildContext context) {

    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: BackGroundColor,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // APPBAR
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 70,
                    color: BackGroundColor,
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios),
                          iconSize: 20,
                        ),
                        Text('Driver Request',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                // LOCATION FORM
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        // PICK UP
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: LocationInputField.nameofLocationInputField(TextInputType.text, pickupDriverRequestController, Remix.map_pin_3_fill, 'Pick Up', 'Enter your pick up location'),
                        ),

                        // WHERE TO ?
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: LocationInputField.nameofLocationInputField(TextInputType.text, whereToDriverRequestController, Remix.map_pin_3_line, 'Where To ?', 'Enter your destination'),
                        ),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            LocationTextButton.nameofTextButton(context, 'Addressbook', (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => AddressBookScreen()));
                            }),
                            LocationTextButton.nameofTextButton(context, 'Map', (){}),
                            LocationTextButton.nameofTextButton(context, 'Division', (){}),
                            LocationTextButton.nameofTextButton(context, 'Landport', (){}),
                            LocationTextButton.nameofTextButton(context, 'Riverport', (){}),
                          ],
                        ),
                        SizedBox(height: 5),

                        // DATE PICKER, TIMEPICKER
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // DATEPICKER
                            ConstrainedBox(
                                constraints: BoxConstraints.tightFor(width: deviceWidth/2.5 , height: 45),
                                child: DatePickerButton.nameofDatePickerButton((){
                                  showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(3000),
                                  );},
                                    'Thu 13th Sep'
                                )
                            ),

                            // TIMEPICKER
                            ConstrainedBox(
                                constraints: BoxConstraints.tightFor(width: deviceWidth/2.5 , height: 45),
                                child: TimePickerButton.nameofTimePickerButton((){
                                  showTimePicker(context: context, initialTime: TimeOfDay.now());
                                }, '10:30AM')
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Divider(thickness: 1),

                // GOOD TYPES
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Goods Type',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      SizedBox(
                        width: 65,
                        child: Text('Clothes & Furniture',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            letterSpacing: 0.2,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(thickness: 1),

                // Insurance
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Insurance',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      SizedBox(
                        width: 65,
                        child: Text('No',
                          textAlign: TextAlign.end,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(thickness: 1),
                SizedBox(height: 45),

                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.65,
                  height: 47,
                  child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DriverRequestSearchingScreen()));
                      },
                      child: Text('Search',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.5
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 0, backgroundColor: primaryColor,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                            side: BorderSide.none
                        ),
                      )
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
