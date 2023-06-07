import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:transport/models/OTP_Login/otp_login_model.dart';
import 'package:transport/service/network_handler/network_handler.dart';

class LoginController extends GetxController{

  
  TextEditingController loginEditingController = TextEditingController();

  void login(){
    
    OtpLoginModel otpLoginModel = OtpLoginModel(mobile: int.parse(loginEditingController.text)); //we had to parse int first
    print("inerted number ${loginEditingController.text}");
    // because post is a static then we can call it
    NetworkHandler.post(
      otpLoginModelToJson(otpLoginModel),
      "/user/otp/create",
      {
        "Content-type":"application/json"
      }
      );



  }
}