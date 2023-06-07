import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transport/controller/Api/login_controller.dart';

import '../../../constants/utils/colors_package.dart';

class PhoneNumberVerification extends StatefulWidget {
  const PhoneNumberVerification({Key? key}) : super(key: key);

  @override
  State<PhoneNumberVerification> createState() => _PhoneNumberVerificationState();
}

class _PhoneNumberVerificationState extends State<PhoneNumberVerification> {

    ///eslam work 
  ///for Api inetgration
  ///creating instance of model LoginController from eslam work 
  ///loginEditingController is acessed by instance which is created for 
  var loginController = Get.put(LoginController());

  final countryPicker = const FlCountryCodePicker();
  CountryCode? countryCode;
  bool visibility = false;
  String errorLabel ="";

  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 50),
      child: Row(
        children: [
          InkWell(
            onTap: () async{
              final code = await countryPicker.showPicker(context: context);
              setState(() {
                countryCode = code;
              });
            },
            child: Container(
              height: 50,
              constraints: const BoxConstraints(
                  maxWidth: 65
              ),
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(7)
              ),
              child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          child: Text(countryCode != null ? countryCode!.dialCode : "+91")
                      ),
                      SizedBox(width: 3),
                      Container(
                          width: 17,
                          height: 17,
                          child: countryCode != null ? countryCode!.flagImage : CountryCodeFlag(flagUri: 'assets/flags/in.png')
                      ),
                    ],
                  )
              ),
            ),
          ),
          const SizedBox(width: 2),
          Flexible(
            child: TextFormField(
              validator: (value) {
                if(value!.isEmpty){
                  errorLabel = 'Phone no';
                  setState(() {
                    visibility = true;
                    }
                  );
                }
              },

              /// eslam work
              /// we had to remove line blow it for dummy usage
              //controller: phoneController,
              /// actually line will be added to make app live 
              /// it just use instance of login model to get acual data from users
              /// it all for seperating business logic from ui component
              controller: loginController.loginEditingController,
              ///now business logic is seperated from ui component
              cursorColor: primaryColor,
              keyboardType: TextInputType.phone,
              textInputAction: TextInputAction.done,
              maxLines: 1,
              maxLength: 10,
              decoration: InputDecoration(
                counterText: '',
                hintText: '333 333 3333',
                hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.6,
                    fontSize: 12.0
                ),
                contentPadding: const EdgeInsets.all(20.0),
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
          ),
        ],
      ),
    );
  }
}
