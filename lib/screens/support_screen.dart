import 'package:flutter/material.dart';
import 'package:transport/constants/utils/utils.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {

  final TextEditingController PhoneNoController= TextEditingController();
  final TextEditingController EmailController= TextEditingController();
  final TextEditingController ReasonController= TextEditingController();
  final TextEditingController MeassageController= TextEditingController();

  String? style_val;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // APPBAR
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios_rounded),
                      iconSize: 24,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text('Support & Help',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                // COMPLAINT FORM
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextLabel('Phone Number'),
                        VehicleInfoInputField.nameofTextField(TextInputType.phone, PhoneNoController, '+91 000 000 0000', 'Please enter phone number'),

                        TextLabel('Email(Optional)'),
                        VehicleInfoInputField.nameofTextField(TextInputType.emailAddress, EmailController, 'example@gmail.com', ''),

                        TextLabel('Reason'),
                        VehicleInfoInputField.nameofTextField(TextInputType.text, ReasonController, 'Reason', ''),

                        TextLabel('Message'),
                        DyInputField.nameofDyInputField(TextInputType.text, 5, MeassageController, 'Type Something...', ''),
                        SizedBox(height: 20,),

                        Align(
                          alignment: Alignment.topRight,
                          child: PrimaButton.nameofPrimaryButton(context, 'Submit', () { }),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
      ),
      bottomNavigationBar: PrimaryBottomNavBar(context),
    );
  }
}

Widget TextLabel(label) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 15.0),
    child: Text(label,
      style: TextStyle(
        fontSize: 14,
        color: Colors.grey,
      ),
    ),
  );
}

class ReasonsDropDown {

  static Container nameofDropDownButton(style_val, onChanged) => Container(
    padding: EdgeInsets.only(left: 15, right: 15),
    height: 45,
    decoration: BoxDecoration(
      border: Border.all(
          color: Color(0XFF999999)
      ),
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
    ),
    child: DropdownButton(
        hint: Text(style_val,
          style: TextStyle(
              color: Colors.grey.shade300
          ),
        ),
        itemHeight: 50,
        isExpanded: true,
        borderRadius: BorderRadius.circular(10),
        icon: Icon(Icons.keyboard_arrow_down,
          color: Colors.black,
        ),
        underline: Container(height: 0),
        iconSize: 28,
        elevation: 16,
        value: style_val,
        items: <String>[
          'Reason 1',
          'Reason 2',
          'Reason 3',
          'Reason 4',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value,
              style: TextStyle(color: Colors.black),
            ),
          );
        }).toList(),
        onChanged: onChanged
    ),
  );

}