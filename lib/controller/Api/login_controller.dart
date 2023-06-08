// ignore_for_file: unused_local_variable

//import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
//import 'package:transport/controller/home_controller.dart';
import 'package:transport/models/OTP_Login/otp_login_model.dart';
//import 'package:transport/screens/verification/otp.dart';
import 'package:transport/service/network_handler/network_handler.dart';

class LoginController extends GetxController{

  
  TextEditingController loginEditingController = TextEditingController();
  //HomeController homeController =HomeController();


  void login(BuildContext context ,function , function1) async {
    
    OtpLoginModel otpLoginModel = OtpLoginModel(mobile: (loginEditingController.text)!=Null? int.parse(loginEditingController.text) : 0000000000); //we had to parse int first
    print("inserted number ${loginEditingController.text}");
    // because post is a static then we can call it
   
    var response = NetworkHandler.post(
      context,
      otpLoginModelToJson(otpLoginModel),
      "/user/otp/create",    //end point
      {
         "Content-type":"application/json"
      },
      function,
      function1,
      );

    //var data = json.decode(response.toString());


  }
}