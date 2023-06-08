import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transport/controller/home_controller.dart';
import 'package:transport/models/OTP_verification/otp_verification_model.dart';
import 'package:transport/service/network_handler/network_handler.dart';

class OtpVerificationController extends GetxController{

    TextEditingController otpEditingController = TextEditingController();
    HomeController homeController =HomeController();

    void otpVerification(int mobile){
    
    OtpVerificationModel otpVerificationModel = OtpVerificationModel(mobile: mobile , otp: int.parse(otpEditingController.text)); //we had to parse int first
    // because post is a static then we can call it
    NetworkHandler.post(
        otpVerificationModelToJson(otpVerificationModel),
        "/user/otp/validate",
        {
          "Content-type":"application/json",
        },
        homeController.confirmDialog("now",(){})
      );



  }
}