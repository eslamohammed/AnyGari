import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

import '../../screens/home/home_screen.dart';
import '../../screens/notification/notification_screen.dart';
import 'colors_package.dart';

// Label
class InputTextLabel {
  static Text nameofText(String label) => Text(
        label,
        style: const TextStyle(
            color: Color(0XFF333333),
            fontSize: 13,
            fontWeight: FontWeight.w500),
      );
}

class TextLabel {
  static Text nameofTextLabel(labelText) => Text(
        labelText,
        style: const TextStyle(
          fontSize: 12,
          color: Colors.grey,
          fontWeight: FontWeight.w500,
        ),
      );
}

class OptionalInputTextLabel {
  static RichText nameofText(String label) => RichText(
        text: TextSpan(children: [
          TextSpan(
            text: label,
            style: TextStyle(
                color: Color(0XFF333333),
                fontSize: 13,
                fontWeight: FontWeight.w500),
          ),
          TextSpan(
              text: ' (Optional)',
              style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 14,
                  fontWeight: FontWeight.w400))
        ]),
      );
}

// Button's
class PrimaButton {
  static SizedBox nameofPrimaryButton(context, label, VoidCallback onPressed) =>
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.65,
        height: MediaQuery.of(context).size.height * 0.070,
        child: ElevatedButton(
            onPressed: onPressed,
            child: Text(
              label,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.5),
            ),
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: primaryColor,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  side: BorderSide.none),
            )),
      );
}

class PrimaryVariantButton {
  static SizedBox nameofPrimaryVariantButton(
          context, label, VoidCallback onPressed) =>
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.65,
        height: 45,
        child: ElevatedButton(
            onPressed: onPressed,
            child: Text(
              label,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.5),
            ),
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: PrimaryVariantColor,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  side: BorderSide.none),
            )),
      );
}

class SecoundaryButton {
  static SizedBox nameofPrimaryButton(VoidCallback onPress, String label) =>
      SizedBox(
        height: 45,
        child: ElevatedButton(
            onPressed: onPress,
            child: Text(
              label,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.5),
            ),
            style: ElevatedButton.styleFrom(
              elevation: 0.4,
              backgroundColor: TertiaryButtonColor,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  side: BorderSide.none),
            )),
      );
}

class BackBottomButton {
  static Container nameofBackBottomButton(context) => Container(
        width: 83,
        height: MediaQuery.of(context).size.height * 0.070,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: SecoundaryButtonColor),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.white,
            size: 16,
          ),
        ),
      );
}

class PrimaBottomButton {
  static SizedBox nameofPrimaryButton(context, label, VoidCallback onPressed) =>
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.065,
        child: ElevatedButton(
            onPressed: onPressed,
            child: Text(
              label,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.5),
            ),
            style: ElevatedButton.styleFrom(
              elevation: 0.4,
              backgroundColor: primaryColor,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.zero,
                  ),
                  side: BorderSide.none),
            )),
      );
}

class SecoundaryBottomButton {
  static ElevatedButton nameofSecoundaryButton(
          context, onPressed, String label) =>
      ElevatedButton(
          onPressed: onPressed,
          child: Text(
            label,
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 1.5),
          ),
          style: ElevatedButton.styleFrom(
            elevation: 0.4,
            backgroundColor: Color(0XFFD3D3D3),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.zero,
                ),
                side: BorderSide.none),
          ));
}

class LocationTextButton {
  static TextButton nameofTextButton(context, label, onPressed) => TextButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(
              color: Colors.grey, fontWeight: FontWeight.w600, fontSize: 11),
        ),
        style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0.0)),
      );
}

class DatePickerButton {
  static Container nameofDatePickerButton(onPressed, dateText) => Container(
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.grey.shade500, width: 1.0),
        ),
        child: TextButton(
            onPressed: onPressed,
            child: Text(
              dateText,
              style: TextStyle(
                color: Colors.black.withOpacity(0.7),
                fontSize: 12,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w400,
              ),
            )),
      );
}

class TimePickerButton {
  static Container nameofTimePickerButton(onPress, timeText) => Container(
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.grey.shade500, width: 1.0),
        ),
        child: TextButton(
            onPressed: onPress,
            child: Text(
              timeText,
              style: TextStyle(
                color: Colors.black.withOpacity(0.7),
                fontSize: 12,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w400,
              ),
            )),
      );
}

class DyInputField {
  static TextFormField nameofDyInputField(
          keyboardType, maxLine, controller, hintText, errorLabel) =>
      TextFormField(
        controller: controller,
        cursorColor: primaryColor,
        keyboardType: keyboardType,
        maxLines: maxLine,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '${errorLabel}';
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
              color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 12.0),
          contentPadding: const EdgeInsets.all(10.0),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0XFF999999)),
            borderRadius: BorderRadius.all(Radius.circular(7.0)),
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
      );
}

class VehicleInfoInputField {
  static Padding nameofTextField(keyBoardType, controller, hintText, errorLabel,
          {bool readOnly = false}) =>
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: TextFormField(
          cursorColor: primaryColor,
          controller: controller,
          readOnly: readOnly,
          keyboardType: keyBoardType,
          maxLines: 1,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return '${errorLabel}';
            } else {
              return null;
            }
          },
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
                fontSize: 14.0),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: Colors.red),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: Colors.red),
            ),
          ),
        ),
      );
}

class LocationInputField {
  static TextFormField nameofLocationInputField(
          keyBoardType, controller, prefixIcon, hintText, errorLabel) =>
      TextFormField(
        controller: controller,
        keyboardType: keyBoardType,
        maxLines: 1,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '${errorLabel}';
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: Icon(
            prefixIcon,
            size: 15,
          ),
          hintStyle: const TextStyle(
              color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 14.0),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: const BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: const BorderSide(color: Colors.red),
          ),
        ),
      );
}

class SecoundaryLocationInputField {
  static TextFormField nameofSecoundaryLocationInputField(
          keyBoardType, controller, hintText, errorLabel) =>
      TextFormField(
        controller: controller,
        keyboardType: keyBoardType,
        maxLines: 1,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '${errorLabel}';
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
              color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 14.0),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: const BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: const BorderSide(color: Colors.red),
          ),
        ),
      );
}

class PaymentOptionButton {
  static Material nameofChoosePaymentOptionButton(onTap, label) => Material(
        color: Colors.white,
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 42,
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/payment_option_icon.png',
                  width: 20,
                  height: 20,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  label,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}

class ChoosePaymentButton {
  static Material nameofChoosePaymentOptionButton(onTap, label) => Material(
        color: Colors.white,
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 42,
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/payment_option_icon.png',
                  width: 15,
                  height: 15,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Expanded(child: Container()),

                /*Visibility(
              // visible: visibility,
                child: Text('selected',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF2A18FB)
                  ),
                )
            )*/
              ],
            ),
          ),
        ),
      );
}

// BottomNavigationBar

// Used in: Notification Screen and MyAccount Screen
Widget PrimaryBottomNavBar(BuildContext context) {
  return Container(
    height: 55,
    decoration: BoxDecoration(color: Colors.white, boxShadow: [
      BoxShadow(
          color: Colors.grey.shade200,
          blurStyle: BlurStyle.outer,
          blurRadius: 10)
    ]),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
          child: const Image(
            image: AssetImage('assets/images/home.png'),
            height: 18,
            width: 18,
            color: Colors.grey,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NotificationScreen()));
          },
          child: Stack(children: [
            const Image(
              image: AssetImage('assets/images/notification_fill.png'),
              height: 18,
              width: 18,
              color: primaryColor,
            ),
            Positioned(
              top: 0,
              right: 1.0,
              child: SizedBox(
                width: 10,
                height: 10,
                child: FloatingActionButton.small(
                    heroTag: 'countNotification',
                    backgroundColor: SecoundaryVariantColor,
                    elevation: 3.0,
                    onPressed: () {},
                    child: const Text(
                      '02',
                      style: TextStyle(fontSize: 4.5),
                    )),
              ),
            ),
          ]),
        )
      ],
    ),
  );
}

class AddressBookInputField {
  static searchInputField(controller, hintText) => TextFormField(
        controller: controller,
        cursorColor: Colors.black87,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
              color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 12.0),
          prefixIcon: Icon(
            Remix.search_line,
            size: 18,
            color: Colors.black,
          ),
          filled: true,
          fillColor: Color(0xFFF3F3F3),
          contentPadding: const EdgeInsets.all(10.0),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(7.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.0),
            borderSide: BorderSide(color: Colors.transparent),
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
      );

  static textInputField(controller, hintText, validator) => TextFormField(
        controller: controller,
        cursorColor: Colors.black87,
        keyboardType: TextInputType.text,
        validator: validator,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
              color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 12.0),
          filled: true,
          fillColor: Color(0xFFF3F3F3),
          contentPadding: const EdgeInsets.all(10.0),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(7.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.0),
            borderSide: BorderSide(color: Colors.transparent),
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
      );

  static numberInputField(controller, hintText, validator) => TextFormField(
        controller: controller,
        cursorColor: Colors.black87,
        keyboardType: TextInputType.number,
        validator: validator,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
              color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 12.0),
          filled: true,
          fillColor: Color(0xFFF3F3F3),
          contentPadding: const EdgeInsets.all(10.0),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(7.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7.0),
            borderSide: BorderSide(color: Colors.transparent),
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
      );
}
