import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import '../../../constants/utils/colors_package.dart';

class ProfileSetupImagePicker extends StatefulWidget {
  const ProfileSetupImagePicker({Key? key}) : super(key: key);

  @override
  State<ProfileSetupImagePicker> createState() => _ProfileSetupImagePickerState();
}

class _ProfileSetupImagePickerState extends State<ProfileSetupImagePicker> {

  File? uplaodProfileImage;
  // Profile Image Picker
  Future<void> chooseProfileImage() async{
    var chosenImage = await ImagePicker.platform.pickImage(source: ImageSource.gallery);
    setState(() {
      try{
        uplaodProfileImage = File(chosenImage!.path);
      }catch (e) {
        debugPrint(e.toString());
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        chooseProfileImage();
      },
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(69.0),
            border: Border.all(
                color: Colors.grey.shade300,
                width: 0.8
            ),
            image: const DecorationImage(
              alignment: Alignment.center,
              scale: 4.5,
              image: AssetImage('assets/images/upload.png'),
            )
        ),
      ),
    );
  }
}


class ProfileSetupInputField extends StatelessWidget {
  final String? hintText;
  final TextEditingController controller;
  final String? emptyErrorLabel;
  final TextInputType? keyboardType;
  const ProfileSetupInputField({Key? key, this.hintText, required this.controller, this.emptyErrorLabel, this.keyboardType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 20),
      child: TextFormField(
        controller: controller,
        cursorColor: primaryColor,
        keyboardType: keyboardType,
        validator: (value){
          if(value == null || value.isEmpty){
            return '${emptyErrorLabel}';
          }else{
            return null;
          }
        },
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
              fontSize: 12.0
          ),
          contentPadding: const EdgeInsets.all(10.0),
          enabledBorder:  const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0XFF999999)),
            borderRadius: BorderRadius.all( Radius.circular(7.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.0),
            borderSide: const BorderSide(color: Color(0XFF999999)),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.0),
            borderSide: const BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.0),
            borderSide: const BorderSide(color: Colors.red),
          ),
        ),
      ),
    );
  }
}

class ProfileSetupMultiLine extends StatelessWidget {
  final int? maxLine;
  final String? hintText;
  final TextEditingController controller;
  final String? emptyErrorLabel;
  final TextInputType? keyboardType;
  const ProfileSetupMultiLine({Key? key, this.maxLine, this.hintText, required this.controller, this.emptyErrorLabel, this.keyboardType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 20),
      child: TextFormField(
        maxLines: maxLine,
        controller: controller,
        cursorColor: primaryColor,
        keyboardType: keyboardType,
        validator: (value){
          if(value == null || value.isEmpty){
            return '${emptyErrorLabel}';
          }else{
            return null;
          }
        },
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
              fontSize: 12.0
          ),
          contentPadding: const EdgeInsets.all(10.0),
          enabledBorder:  const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0XFF999999)),
            borderRadius: BorderRadius.all( Radius.circular(7.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.0),
            borderSide: const BorderSide(color: Color(0XFF999999)),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.0),
            borderSide: const BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.0),
            borderSide: const BorderSide(color: Colors.red),
          ),
        ),
      ),
    );
  }
}

class ProfileSetupDateInputField extends StatefulWidget {
  final String? hintText;
  final TextEditingController controller;
  final String? emptyErrorLabel;
  const ProfileSetupDateInputField({Key? key, this.hintText, required this.controller, this.emptyErrorLabel}) : super(key: key);

  @override
  State<ProfileSetupDateInputField> createState() => _ProfileSetupDateInputFieldState();
}

class _ProfileSetupDateInputFieldState extends State<ProfileSetupDateInputField> {

  // Date Picker
  Future<void> pickDate() async{
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(), firstDate: DateTime(1000), lastDate: DateTime.now());
    if(pickedDate != null) {
      String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
      setState(() {
        widget.controller.text = formattedDate; //set output date to TextField value.
      });
    }else {
      widget.controller.text = DateTime.now().toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 20),
      child: TextFormField(
        onTap: () {
          pickDate();
          },
        controller: widget.controller,
        cursorColor: primaryColor,
        keyboardType: TextInputType.datetime,
        validator: (value){
          if(value == null || value.isEmpty){
            return '${widget.emptyErrorLabel}';
          }else{
            return null;
          }
        },
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
              fontSize: 12.0
          ),
          contentPadding: const EdgeInsets.all(10.0),
          enabledBorder:  const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0XFF999999)),
            borderRadius: BorderRadius.all( Radius.circular(7.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.0),
            borderSide: const BorderSide(color: Color(0XFF999999)),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.0),
            borderSide: const BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.0),
            borderSide: const BorderSide(color: Colors.red),
          ),
        ),
      ),
    );
  }
}