import 'package:flutter/material.dart';
import 'package:transport/constants/utils/utils.dart';

class SaveAddressScreen extends StatefulWidget {
  const SaveAddressScreen({Key? key}) : super(key: key);

  @override
  State<SaveAddressScreen> createState() => _SaveAddressScreenState();
}

class _SaveAddressScreenState extends State<SaveAddressScreen> {

  TextEditingController addressController =TextEditingController();
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: true,
        title: const Text('Save Address',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Colors.black
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                color: Color(0xFFF8F8F8),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const ListTile(
                title: Text('HR Layout',
                  style: TextStyle(
                      fontWeight: FontWeight.w500
                  ),
                ),
                subtitle: Text('2972 Westheimer Rd. Santa Ana, Illinois 85486',
                  style: TextStyle(
                      fontSize: 10
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: InputTextLabel.nameofText('Address'),
            ),
            AddressBookInputField.textInputField(addressController, 'Enter address', null),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: OptionalInputTextLabel.nameofText('Recipient Mobile No'),
            ),
            AddressBookInputField.numberInputField(numberController, '+91', null),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: OptionalInputTextLabel.nameofText('Recipient Name'),
            ),
            AddressBookInputField.textInputField(addressController, 'Recipient Name', null),
            
            const SizedBox(
              height: 20,
            ),
            
            Align(
                alignment: Alignment.center,
                child: PrimaButton.nameofPrimaryButton(context, 'Save', () { }
                )
            )

          ],
        ),
      ),
    );
  }
}
