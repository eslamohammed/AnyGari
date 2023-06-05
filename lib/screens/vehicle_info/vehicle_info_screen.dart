import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transport/constants/utils/utils.dart';
import 'package:transport/models/vehilce_list_model.dart';
import '../../controller/home_controller.dart';
import '../location/choose_location/choose_location_screen.dart';
import '../notification/notification_screen.dart';

class VehicleDetailScreen extends StatefulWidget {
  final VehicleList list;
  VehicleDetailScreen({Key? key, required this.list}) : super(key: key);

  @override
  State<VehicleDetailScreen> createState() => _VehicleDetailScreenState();
}

class _VehicleDetailScreenState extends State<VehicleDetailScreen> {
  final homeController = Get.put(HomeController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // seatController.text = widget.list.seatQty.toString() ?? "";
    homeController.carTypeController.text = widget.list.vehicleType.toString();
    homeController.seatController.text = widget.list.seatQty.toString();
    homeController.acController.text = widget.list.ac == true ? "Ac" : "Non Ac";
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            //APPBAR
            SizedBox(
              height: 85,
              width: deviceWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.list.vehicleName ?? "",
                    style: const TextStyle(color: Colors.black, fontSize: 18),
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
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.grey.shade200),
                        child: const Image(
                            image: AssetImage(
                                'assets/images/notification_fill.png'))),
                  ),
                ],
              ),
            ),

            // VEHICLE INFO FORM
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Vehicle Info',
                    style: TextStyle(fontSize: 18),
                  ),
                  VehicleInfoInputField.nameofTextField(
                      TextInputType.number,
                      homeController.seatController,
                      'No of Seats',
                      'Enter no of seats',
                      readOnly: true),
                  VehicleInfoInputField.nameofTextField(
                      TextInputType.text,
                      homeController.carTypeController,
                      'Type of Car',
                      'Enter type of car',
                      readOnly: true),
                  VehicleInfoInputField.nameofTextField(
                      TextInputType.number,
                      homeController.seatsController,
                      'No of Seats',
                      'Enter no of seats',
                      readOnly: true),
                  VehicleInfoInputField.nameofTextField(
                      TextInputType.text,
                      homeController.acController,
                      'A/C or Non A/C',
                      'Enter A/C or Non A/C',
                      readOnly: true),
                ],
              ),
            )
          ],
        ),
      )),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BackBottomButton.nameofBackBottomButton(context),
            const SizedBox(
              width: 5,
            ),
            PrimaButton.nameofPrimaryButton(context, 'CONTINUE', () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChooseLocationScreen()));
            })
          ],
        ),
      ),
    );
  }
}
