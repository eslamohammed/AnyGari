
// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transport/controller/home_controller.dart';
import 'package:transport/models/OTP_verification/otp_verification_model.dart';
import 'package:transport/service/network_handler/network_handler.dart';

class OtpVerificationController extends GetxController{

    TextEditingController otpEditingController = TextEditingController();
    HomeController homeController =HomeController();

    void otpVerification(BuildContext context , int mobile ,  function , function1){
    
    OtpVerificationModel otpVerificationModel = OtpVerificationModel(
      mobile: mobile != null ? mobile : 0000000000 ,
      otp: otpEditingController.text != null ? int.parse(otpEditingController.text) : 000000); //we had to parse int first
    // because post is a static then we can call it
    NetworkHandler.post(
        context,
        otpVerificationModelToJson(otpVerificationModel), //Body
        "/user/otp/validate",                             //Endpoint
        {
          "Content-type":"application/json",
        },
        //homeController.confirmDialog("now",(){}),
        function,
        function1,
      );

  }
}