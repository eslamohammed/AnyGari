import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transport/controller/home_controller.dart';
import 'package:transport/models/division_model.dart';

import '../../../../constants/utils/colors_package.dart';
import '../../../../constants/utils/utils.dart';
import '../../confirm_pickup_loc_screen.dart';

class DivisionScreen extends StatefulWidget {
  const DivisionScreen({Key? key}) : super(key: key);

  @override
  State<DivisionScreen> createState() => _DivisionScreenState();
}

class _DivisionScreenState extends State<DivisionScreen> {
  final TextEditingController locController = TextEditingController();
  String value = "";

  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      children: [
        Container(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // HEADER
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Choose your\ndivision',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.clear_sharp,
                        size: 18,
                      ))
                ],
              ),
              const SizedBox(height: 15),
              InputTextLabel.nameofText('Division'),
              DropDownButton.nameofDropDownButton(
                value,
                (value) {
                  setState(() {
                    value = value;
                  });
                },
                items: homeController.divisionList.value.divisionList!
                    .map<DropdownMenuItem<DivisionList>>((DivisionList value) {
                  return DropdownMenuItem<DivisionList>(
                    value: value,
                    child: Text(
                      value.division ?? "",
                      style: TextStyle(color: Colors.black),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 15),
              InputTextLabel.nameofText('District'),
              DropDownButton.nameofDropDownButton(
                value,
                (value) {
                  setState(() {
                    value = value;
                  });
                },
                items: <String>[
                  'Divison 1',
                  'Divison 2',
                  'Divison 3',
                  'Divison 4',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(color: Colors.black),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 15),
              InputTextLabel.nameofText('Thana/Upazila'),
              DropDownButton.nameofDropDownButton(
                value,
                (value) {
                  setState(() {
                    value = value;
                  });
                },
                items: <String>[
                  'Divison 1',
                  'Divison 2',
                  'Divison 3',
                  'Divison 4',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(color: Colors.black),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 15),
              InputTextLabel.nameofText('Union'),
              DropDownButton.nameofDropDownButton(
                value,
                (value) {
                  setState(() {
                    value = value;
                  });
                },
                items: <String>[
                  'Divison 1',
                  'Divison 2',
                  'Divison 3',
                  'Divison 4',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(color: Colors.black),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 15),
              OptionalInputTextLabel.nameofText('Comment'),
              DyInputField.nameofDyInputField(
                  TextInputType.text, 4, locController, '', 'errorLabel'),
              const SizedBox(height: 15),
              DialogButton.nameofDialogButton(context, 'Confirm', () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ConfirmPickUpLocScreen()));
              })
            ],
          ),
        )
      ],
    );
  }
}

class DropDownButton {
  static Container nameofDropDownButton(val, onChanged,
          {required List<DropdownMenuItem<Object>>? items}) =>
      Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0XFF999999)),
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
        child: DropdownButton(
            hint: Text(
              '',
              style: TextStyle(color: Colors.grey.shade300),
            ),
            itemHeight: 50,
            isExpanded: true,
            borderRadius: BorderRadius.circular(10),
            icon: const Icon(
              Icons.keyboard_arrow_down_rounded,
              color: TextColor,
            ),
            underline: Container(height: 0),
            iconSize: 18,
            elevation: 16,
            value: val.isEmpty ? null : val,
            items: items,
            onChanged: onChanged),
      );
}

class DialogButton {
  static SizedBox nameofDialogButton(context, label, VoidCallback onPressed) =>
      SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 45,
        child: ElevatedButton(
            onPressed: onPressed,
            child: Text(
              label,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.5),
            ),
            style: ElevatedButton.styleFrom(
              elevation: 0.4,
              backgroundColor: primaryColor,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  side: BorderSide.none),
            )),
      );
}
