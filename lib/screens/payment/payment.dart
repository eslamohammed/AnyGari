import 'package:flutter/material.dart';
import 'package:transport/constants/utils/utils.dart';
import 'package:transport/screens/payment/payment_confirm.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {

  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();
  final TextEditingController  cvvController= TextEditingController();

  @override
  Widget build(BuildContext context) {

    double deviceWidth = MediaQuery.of(context).size.width;
    // double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 145,
          centerTitle: false,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          shadowColor: Colors.white,
          elevation: 3,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Payment',
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                  fontWeight: FontWeight.w700
                ),
              ),
              Text('Choose your payment mode',
                style: TextStyle(
                  fontSize: 12,
                  letterSpacing: 0.5,
                  color: Colors.grey
                ),
              )
            ],
          ),
        )

      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(35.0, 30.0, 30.0, 0),
          child: ListView(
            children: [
              InputTextLabel.nameofText('Credit/Debit Card'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: PaymentTextField.nameofPaymentTextField(cardNumberController, '0000 0000 0000 0000', "Enter Card number"),
              ),
              SizedBox(height: 15,),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InputTextLabel.nameofText('MM/YY'),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                          width: deviceWidth/ 2.5,
                          child: ExpiryTextFormField.nameofExpiryTextFormField(expiryDateController, 'MM/YY', 'Enter card expiry')
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InputTextLabel.nameofText('CVV'),
                      Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          width: deviceWidth/ 2.5,
                          child: CvvTextFormField.nameofCvvTextFormField(cvvController, '000', 'Enter your CVV')
                      ),
                    ],
                  ),

                ],
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                      onPressed: (){},
                      child: Text('Save this payment method',
                        style: TextStyle(
                          color: Color(0XFF6A6BFF)
                        ),
                      )
                  ),
                ],
              )
            ],
          ),
        )
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 25),
        child: PrimaButton.nameofPrimaryButton(context, 'Continue', (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentConfirmScreen()));
        }
        ),
      ),
    );
  }
}

class PaymentTextField {
  static TextFormField nameofPaymentTextField(TextEditingController controller, String hintText, String errorLabel) =>  TextFormField(
    controller: controller,
    keyboardType: TextInputType.number,
    maxLines: 1,
    maxLength: 16,
    validator: (value){
      if(value == null || value.isEmpty){
        return errorLabel;
      }else{
        return null;
      }
    },
    decoration: InputDecoration(
      counterText: '',
      hintText: hintText,
      hintStyle: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w500,
          fontSize: 13.0
      ),
      suffixIcon: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Image.asset('assets/images/payment_icon.png',
          width: 55,
          height: 55,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      enabledBorder:  const OutlineInputBorder(
        borderSide: BorderSide(color: Color(0XFF999999)),
        borderRadius: BorderRadius.all( Radius.circular(15.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Color(0XFF999999)),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Colors.red),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Colors.red),
      ),
    ),
  );
}
class ExpiryTextFormField {
  static TextFormField nameofExpiryTextFormField(TextEditingController controller, String hintText, String errorLabel) =>  TextFormField(
    controller: controller,
    keyboardType: TextInputType.number,
    maxLines: 1,
    validator: (value){
      if(value == null || value.isEmpty){
        return '${errorLabel}';
      }else{
        return null;
      }
    },
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w500,
          fontSize: 13.0
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      enabledBorder:  const OutlineInputBorder(
        borderSide: BorderSide(color: Color(0XFF999999)),
        borderRadius: BorderRadius.all( Radius.circular(15.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Color(0XFF999999)),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Colors.red),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Colors.red),
      ),
    ),
  );
}
class CvvTextFormField {
  static TextFormField nameofCvvTextFormField(TextEditingController controller, String hintText, String errorLabel) =>  TextFormField(
    controller: controller,
    keyboardType: TextInputType.number,
    maxLines: 1,
    maxLength: 3,
    validator: (value){
      if(value == null || value.isEmpty){
        return '${errorLabel}';
      }else{
        return null;
      }
    },
    decoration: InputDecoration(
      counterText: '',
      hintText: hintText,
      hintStyle: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w500,
          fontSize: 13.0
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      enabledBorder:  const OutlineInputBorder(
        borderSide: BorderSide(color: Color(0XFF999999)),
        borderRadius: BorderRadius.all( Radius.circular(15.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Color(0XFF999999)),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Colors.red),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(color: Colors.red),
      ),
    ),
  );
}