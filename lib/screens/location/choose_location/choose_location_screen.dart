import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:remixicon/remixicon.dart';
import 'package:transport/constants/utils/utils.dart';
import 'package:transport/screens/location/choose_location/address_book/address_book_screen.dart';
import 'package:transport/screens/location/choose_location/landport/landport_screen.dart';
import 'package:transport/screens/location/choose_location/riverport/riverport_screen.dart';
import 'package:transport/screens/notification/notification_screen.dart';

import '../../../constants/utils/colors_package.dart';
import '../../../controller/home_controller.dart';
import 'division/division_screen.dart';

class ChooseLocationScreen extends StatefulWidget {
  const ChooseLocationScreen({Key? key}) : super(key: key);

  @override
  State<ChooseLocationScreen> createState() => _ChooseLocationScreenState();
}

enum SingingCharacter { yes, no }

class _ChooseLocationScreenState extends State<ChooseLocationScreen> {
  final TextEditingController pickupController = TextEditingController();
  final TextEditingController whereToController = TextEditingController();
  final TextEditingController goodTypeController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();

  final TextEditingController locController = TextEditingController();

  var style_val;
  final homeController = Get.put(HomeController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.wait(
        [homeController.getDivisionList(), homeController.getDistrictList()]);
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                // APPBAR
                SizedBox(
                  height: 85,
                  width: deviceWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Choose Location',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NotificationScreen()));
                        },
                        child: Container(
                            width: 40,
                            height: 40,
                            padding: const EdgeInsets.all(12),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.grey.shade200),
                            child: Icon(
                              Remix.notification_4_fill,
                              size: 18,
                            )),
                      ),
                    ],
                  ),
                ),

                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // PICK UP
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: LocationInputField.nameofLocationInputField(
                            TextInputType.text,
                            pickupController,
                            Remix.map_pin_3_fill,
                            'Pick Up',
                            'Enter your pick up location'),
                      ),

                      // WHERE TO ?
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: LocationInputField.nameofLocationInputField(
                            TextInputType.text,
                            whereToController,
                            Remix.map_pin_3_line,
                            'Where To ?',
                            'Enter your destination'),
                      ),

                      // GOODS TYPE?
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: SecoundaryLocationInputField
                            .nameofSecoundaryLocationInputField(
                                TextInputType.number,
                                goodTypeController,
                                'Good Type (Optional)',
                                'Enter no of seats'),
                      ),
                      const SizedBox(height: 5),

                      // ADDRESS BOOK, MAP, DIVISION, LAND PORT, RIVER PORT
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          LocationTextButton.nameofTextButton(
                              context, 'Addressbook', () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddressBookScreen()));
                          }),
                          LocationTextButton.nameofTextButton(
                              context, 'Map', () {}),
                          LocationTextButton.nameofTextButton(
                              context, 'Division', () {
                            showDialog(
                                context: context,
                                builder: (context) => DivisionScreen());
                          }),
                          LocationTextButton.nameofTextButton(
                              context, 'Landport', () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LandPortScreen()));
                          }),
                          LocationTextButton.nameofTextButton(
                              context, 'Riverport', () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RiverPortScreen()));
                          }),
                        ],
                      ),
                      const SizedBox(height: 5),

                      // DATE PICKER, TIMEPICKER
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // DATE PICKER
                          DatePickerButton.nameofDatePickerButton(() {
                            showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(3000),
                            );
                          }, 'Thu 13th Sep'),

                          // TIME PICKER
                          TimePickerButton.nameofTimePickerButton(() {
                            showTimePicker(
                                context: context, initialTime: TimeOfDay.now());
                          }, '10:30AM'),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      // TODO RADIO BUTTONS
                      // INSURANCE
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: const [
                                Text(
                                  'Insurance',
                                  style: TextStyle(
                                      fontSize: 12.5,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Transform.scale(
                                  scale: 0.8,
                                  child: Radio(
                                      activeColor:
                                          MaterialStateColor.resolveWith(
                                              (states) => primaryColor),
                                      value: "yes",
                                      groupValue: 'no',
                                      onChanged: (index) {}),
                                ),
                                const Text(
                                  'Yes',
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Transform.scale(
                                  scale: 0.8,
                                  child: Radio(
                                      activeColor:
                                          MaterialStateColor.resolveWith(
                                              (states) => primaryColor),
                                      value: 'no',
                                      groupValue: 'yes',
                                      onChanged: (index) {}),
                                ),
                                const Text('No')
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),

                      // ROUNDED TRIP
                      Row(
                        children: [
                          Expanded(
                            child: RichText(
                                text: const TextSpan(children: [
                              WidgetSpan(
                                  child: Icon(
                                Icons.cached_rounded,
                                size: 14,
                              )),
                              TextSpan(
                                  text: ' Rounded Trip',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: TextColor,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500))
                            ])),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Transform.scale(
                                    scale: 0.8,
                                    child: Radio(
                                        activeColor:
                                            MaterialStateColor.resolveWith(
                                                (states) => primaryColor),
                                        value: 'no',
                                        groupValue: 'yes',
                                        onChanged: (index) {})),
                                Text(
                                  'Yes',
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Transform.scale(
                                  scale: 0.8,
                                  child: Radio(
                                      activeColor:
                                          MaterialStateColor.resolveWith(
                                              (states) => primaryColor),
                                      value: 'no',
                                      groupValue: 'yes',
                                      onChanged: (index) {}),
                                ),
                                Text('No')
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BackBottomButton.nameofBackBottomButton(context),
            const SizedBox(
              width: 5,
            ),
            PrimaButton.nameofPrimaryButton(context, 'BOOK A RIDE', () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => SingleChildScrollView(
                        child: DivisionScreen(),
                      ));
            })
          ],
        ),
      ),
    );
  }
}
