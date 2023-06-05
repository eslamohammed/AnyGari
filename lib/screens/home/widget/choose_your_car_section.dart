import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transport/controller/home_controller.dart';

import '../../../constants/utils/colors_package.dart';
import '../../vehicle_info/vehicle_info_screen.dart';

class ChooseYourCar extends StatefulWidget {
  const ChooseYourCar({Key? key}) : super(key: key);

  @override
  State<ChooseYourCar> createState() => _ChooseYourCarState();
}

class _ChooseYourCarState extends State<ChooseYourCar> {
  final homeController = Get.put(HomeController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController.getVehilceList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text[Choose Car]
        const Text(
          'Choose Your car',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 20),

        // List of All Vehicle
        Obx(() {
          return homeController.isVehileListLoading.value
              ? const Center(
                  child: CircularProgressIndicator(
                    color: primaryColor,
                  ),
                )
              : GridView.builder(
                  itemCount:
                      homeController.vehicleList.value.vehicleList!.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 5,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Get.to(
                          () => VehicleDetailScreen(
                              list: homeController
                                  .vehicleList.value.vehicleList![index]),
                        );
                      },
                      child: Section.nameofSection(
                          context,
                          "assets/images/home_screen/car_line.png",
                          homeController.vehicleList.value.vehicleList![index]
                              .vehicleName),
                    );
                  },
                );
        }),
      ],
    );
  }
}

class Section {
  static SizedBox nameofSection(context, image, labelText) => SizedBox(
        height: 80,
        width: 135,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 50,
              height: 50,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(69.0),
                  border: Border.all(color: Colors.grey.shade300, width: 0.8)),
              child: Image.asset(
                image,
                width: 20,
                // height: 11,
                color: primaryColor,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              labelText,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 14,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            )
          ],
        ),
      );
}

class VehicleGridView {
  static GestureDetector nameofVehicleGridView(
          context, PageName, image, labelText) =>
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => PageName));
        },
        child: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 60,
                height: 60,
                padding: EdgeInsets.all(19),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60.0),
                  border: Border.all(color: Colors.grey.shade400, width: 0.8),
                ),
                child: Image(
                  color: Colors.black,
                  image: AssetImage(image),
                  width: 24,
                  height: 24,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 5),
              Text('$labelText'),
            ],
          ),
        ),
      );
}
