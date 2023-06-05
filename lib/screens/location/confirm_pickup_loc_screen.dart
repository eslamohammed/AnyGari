import 'package:flutter/material.dart';
import 'package:transport/constants/utils/utils.dart';
import 'package:transport/screens/location/searching_screen.dart';


class ConfirmPickUpLocScreen extends StatefulWidget {
  const ConfirmPickUpLocScreen({Key? key}) : super(key: key);

  @override
  State<ConfirmPickUpLocScreen> createState() => _ConfirmPickUpLocScreenState();
}

class _ConfirmPickUpLocScreenState extends State<ConfirmPickUpLocScreen> {

  final TextEditingController seatController= TextEditingController();
  final TextEditingController carTypeController= TextEditingController();
  final TextEditingController seatsController= TextEditingController();
  final TextEditingController acController= TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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

              //TEXT, IMAGE
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // TEXT
                  const Text('Searching for:',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  const SizedBox(height: 20),

                  // IMAGE
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(69.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(69.0),
                      child: Image(
                        color: Colors.grey.shade300,
                        image: const AssetImage(''),
                        height: 35.0,
                        width: 65.0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),

                  // DATE & TIME
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DatePickerButton.nameofDatePickerButton((){
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime.now(),
                        );},
                          'Thu 13th Sep'
                      ),
                      TimePickerButton.nameofTimePickerButton((){
                        showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now());
                      }, '10:30AM'),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // FROM & TO ADDRESS
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 15,
                          height: 55,
                          child: Image.asset('assets/images/location.png'),
                        ),
                        const SizedBox(width: 15),

                        Expanded(
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
                              SizedBox(height: 25),

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
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Divider(thickness: 1),
                  const SizedBox(height: 8),

                  // GOOD TYPES
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
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
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Divider(thickness: 1),
                  const SizedBox(height: 8),
                ],
              ),

              // Text
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text('Vehicle info',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.grey,
                  ),
                ),
              ),

              // VEHICLE INFO FORM
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Form(
                    child: Column(
                      children: [
                        // NO OF SEATS
                        VehicleInfoInputField.nameofTextField(TextInputType.number, seatController, 'No of Seats','Enter no of seats'),

                        // TYPE OF CAR
                        VehicleInfoInputField.nameofTextField(TextInputType.text, carTypeController, 'Type of Car','Enter type of car'),

                        // NO OF SEATS
                        VehicleInfoInputField.nameofTextField(TextInputType.number, seatsController, 'No of Seats','Enter no of seats'),

                        // A/C
                        VehicleInfoInputField.nameofTextField(TextInputType.text, acController, 'A/C or Non A/C','Enter A/C or Non A/C'),
                      ],
                    )
                ),
              )
            ],
          ),
        )
      ),

      // CONFIRM PICK-UP
      bottomNavigationBar: Container(
        height: 65,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              blurRadius: 5,
              blurStyle: BlurStyle.outer,
              spreadRadius: 0.1,
              color: Colors.grey.withOpacity(0.2),
            ),
          ],
        ),
        child: Center(
          child: PrimaryVariantButton.nameofPrimaryVariantButton(context, 'Confirm Pick-up', (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SearchingScreen()));
          }),
        ),
      ),
    );
  }
}

