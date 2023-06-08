import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:transport/controller/home_controller.dart';
import 'package:transport/models/OTP_Login/otp_login_model.dart';
import 'package:transport/screens/verification/otp.dart';
import 'package:transport/service/network_handler/network_handler.dart';

class LoginController extends GetxController{

  
  TextEditingController loginEditingController = TextEditingController();
  //HomeController homeController =HomeController();
  void login(BuildContext context ,function){
    
    OtpLoginModel otpLoginModel = OtpLoginModel(mobile: int.parse(loginEditingController.text)); //we had to parse int first
    print("inerted number ${loginEditingController.text}");
    // because post is a static then we can call it
    NetworkHandler.post(
      otpLoginModelToJson(otpLoginModel),
      "/user/otp/create",    //end point
      {
         "Content-type":"application/json"
      },
      function
      /*{
            debugPrint("============================================================="),
            homeController.confirmDialog( () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen(phoneNumber: '${int.parse(loginEditingController.text)}')));
          }
        )
      }*/
      

      );



  }
}