import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:transport/constants/utils/buttons.dart';
import 'package:transport/controller/Api/otp_verification_controller.dart';
import 'package:transport/screens/verification/sucess_screen.dart';

class OtpScreen extends StatefulWidget {
  String phoneNumber;
  OtpScreen({Key? key, required this.phoneNumber}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  
    ///eslam work 
    ///for Api inetgration
    ///creating instance of model LoginController from eslam work 
    ///loginEditingController is acessed by instance which is created for 
    var otpVerificationController = Get.put(OtpVerificationController());


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height - (MediaQuery.of(context).padding.bottom + MediaQuery.of(context).padding.top);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: height,
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: width * 0.26,
                  height: height * 0.45,
                  alignment: Alignment.bottomCenter,
                  child: Image.asset('assets/images/otp.png',
                    width: 240,
                    height: 240,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: height * 0.045),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('OTP Verification',
                      style: TextStyle(
                        // letterSpacing: 1.2,
                        fontSize: 26,
                      ),
                    ),
                    Text('Enter OTP sent to your mobile no ${widget.phoneNumber}',
                      style: const TextStyle(
                        fontSize: 13,
                        color: Color(0xFF7A7A7A)
                      ),
                    ),
                  ],
                ),

                PinCodeTextField(
                  controller: otpVerificationController.otpEditingController,
                  length: 6,
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w400
                  ),
                  appContext: (context),
                  onChanged: (value) {
                    debugPrint(value);
                    setState(() {
                      // currentText = value;
                    });},
                  pinTheme: PinTheme(
                    borderWidth: 1.5,
                    activeFillColor: const Color(0xFFDD3333),
                    selectedColor: const Color(0xFFDD3333),
                    activeColor: const Color(0xFFDD3333),
                    inactiveColor: const Color(0xFF999999),
                    errorBorderColor: const Color(0xFF999999),
                  ),
                ),
                const SizedBox(height: 15),

                Container(
                  width: width,
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFF2DE),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(Icons.info_outlined,
                        color: Color(0xFFFFAE34),
                      ),
                      SizedBox(width: 10),
                      Text('Automatically reading  OTP',
                        style: TextStyle(
                          color: Color(0xFFFFAE34),
                        ),
                      )
                    ],
                  ),
                ),

                const SizedBox(height: 35),

                PrimaryButton(
                  width: width * 0.65,
                  label: 'VERIFY',
                  onPressed: () {
                    otpVerificationController.otpVerification(int.parse(widget.phoneNumber));
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => const SuccessScreen()));
                  
                  },
                ),
                const Spacer(),

                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Didn’t recieved OTP ? ',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      InkWell(
                          onTap: () {},
                          child: const Text(' Resend OTP',
                            style: TextStyle(
                              color: Color(0xFFFFAE34),
                            ),
                          )
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}
