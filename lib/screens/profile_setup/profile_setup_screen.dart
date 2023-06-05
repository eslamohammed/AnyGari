import 'package:flutter/material.dart';
import 'package:transport/constants/utils/buttons.dart';
import 'package:transport/constants/utils/utils.dart';
import 'package:transport/screens/home/home_screen.dart';
import 'package:transport/screens/profile_setup/widget/profile_setup_appbar.dart';
import 'package:transport/screens/profile_setup/widget/profile_setup_input_field.dart';

import '../../constants/utils/colors_package.dart';

class ProfileSetupScreen extends StatefulWidget {
  const ProfileSetupScreen({Key? key}) : super(key: key);

  @override
  State<ProfileSetupScreen> createState() => _ProfileSetupScreenState();
}

class _ProfileSetupScreenState extends State<ProfileSetupScreen> {

  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController dobController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  int? selectedvalue = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedvalue = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const ProfileSetupAppBar(),

            // UPLOAD IMAGE, PROFILE SETUP FORM,  RADIO BUTTON
            Column(
              children: [
                // UPLOAD IMAGE
                const ProfileSetupImagePicker(),
                const SizedBox(height: 10),

                // PROFILE SETUP FORM
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InputTextLabel.nameofText('Name'),
                        ProfileSetupInputField(
                          hintText: 'Eg: Nakul Kumar',
                          controller: nameController,
                          emptyErrorLabel: 'Enter your Name',
                          keyboardType: TextInputType.name,
                        ),

                        InputTextLabel.nameofText('Mobile Number'),
                        ProfileSetupInputField(
                          hintText: '+91 333 333 3333',
                          controller: mobileController,
                          keyboardType: TextInputType.number,
                          emptyErrorLabel: 'Enter your Mobile Number',
                        ),

                        OptionalInputTextLabel.nameofText('E-mail'),
                        ProfileSetupInputField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          hintText: 'Eg: example@email.com',
                          emptyErrorLabel: 'Enter your email',
                        ),

                        OptionalInputTextLabel.nameofText('Address'),
                        ProfileSetupMultiLine(
                          maxLine: 4,
                          controller: addressController,
                          keyboardType: TextInputType.streetAddress,
                          hintText: 'Enter your Address',
                          emptyErrorLabel: 'Enter your address',
                        ),

                        OptionalInputTextLabel.nameofText('Date of Birth'),
                        ProfileSetupDateInputField(
                            hintText: '12-12-2000',
                            emptyErrorLabel: 'Pick Date',
                            controller: dobController
                        ),
                      ],
                    ),
                  ),

                ),

                // RADIO BUTTON
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Transform.scale(
                      scale: 0.8,
                      child: Radio<int>(
                        value: 0,
                        toggleable: true,
                        activeColor: MaterialStateColor.resolveWith((states) => primaryColor),
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        groupValue: selectedvalue,
                        onChanged: (value){
                          setState(() {
                            selectedvalue = value;
                            print(value);
                          });
                        },
                      ),
                    ),
                    RichText(
                        text: const TextSpan(
                            children: [
                              TextSpan(text: 'Agreed to ',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Poppins',
                                    fontSize: 10
                                ),
                              ),
                              TextSpan(text: 'Term & Conditions',
                                style: TextStyle(
                                    color: primaryColor,
                                    fontFamily: 'Poppins',
                                    decoration: TextDecoration.underline,
                                    fontSize: 10
                                ),
                              ),
                              TextSpan(text: ' & ',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Poppins',
                                    fontSize: 10
                                ),
                              ),
                              TextSpan(text: 'Privacy Policy',
                                style: TextStyle(
                                    color: primaryColor,
                                    fontFamily: 'Poppins',
                                    decoration: TextDecoration.underline,
                                    fontSize: 10
                                ),
                              )
                            ]
                        )
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),

      // SUBMIT BUTTON
      bottomNavigationBar: PrimaryBottomButton(
          label: 'SUBMIT',
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
          }
      )
    );
  }
}

