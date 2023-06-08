

import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:transport/controller/Api/login_controller.dart';
import 'package:transport/models/Register/register_model.dart';
import 'package:transport/service/network_handler/network_handler.dart';

class RegisterController extends GetxController{

  final TextEditingController fullNameTextController = TextEditingController();
  final TextEditingController mobileTextController = TextEditingController();
  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController addressTextController = TextEditingController();
  final TextEditingController dobTextController = TextEditingController();

  var loginController = Get.find<LoginController>();

  void register(BuildContext context ,function , function1) async {

    RegisterModel registerModel = RegisterModel(
      fullName: fullNameTextController.text, 
      mobile: int.parse(loginController.loginEditingController.text), 
      email: emailTextController.text, 
      address: addressTextController.text, 
      dob: dobTextController.text
      );
  

      var response = NetworkHandler.registerPost(
      context,
      registerModelToJson(registerModel),
      "/user/register",    //end point /user/register
      {
         "Content-type":"application/json"
      },
      function,
      function1,
      );

    print(response);
  }
}