import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';
import 'package:transport/screens/location/choose_location/address_book/save_address_screen.dart';

import '../../../../constants/utils/colors_package.dart';
import '../../../../constants/utils/utils.dart';

class AddressBookScreen extends StatefulWidget {
  const AddressBookScreen({Key? key}) : super(key: key);

  @override
  State<AddressBookScreen> createState() => _AddressBookScreenState();
}

class _AddressBookScreenState extends State<AddressBookScreen> {

  TextEditingController searchController = TextEditingController();
  int? selectedValue = 1;
  int? selectTile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: true,
        title: const Text('Addressbook',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.black
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SaveAddressScreen()));
            },
            icon: const Icon(Remix.add_circle_line,
              color: Colors.grey,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
          child: Column(
            children: [
              AddressBookInputField.searchInputField(searchController, 'Find Address'),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: 44,
                    child: InkWell(
                      onTap: () { },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(Remix.arrow_up_down_line,
                            size: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('A-Z',
                            style: TextStyle(
                                fontSize: 12
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Column(
                children:  List.generate(10, (index) =>
                    Column(
                      children: [
                        ListTile(
                          onTap: () {
                            setState(() {
                              selectTile = index;
                            });
                           debugPrint(index.toString());
                          },
                          tileColor: const Color(0xFFF8F8F8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          title: const Text('HR Layout',
                            style: TextStyle(
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          subtitle: const Text('2972 Westheimer Rd. Santa Ana, Illinois 85486',
                            style: TextStyle(
                              fontSize: 10
                            ),
                          ),
                          trailing: Radio<int>(
                            value: selectTile == index ? 1 : 0,
                            toggleable: true,
                            activeColor: MaterialStateColor.resolveWith((states) => Colors.blue),
                            fillColor: MaterialStateColor.resolveWith((states) => primaryColor),
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            groupValue: selectTile == index ? 1 : selectedValue,
                            onChanged: (value){
                              setState(() {
                                selectTile == index ? selectedValue = value : 0;
                                debugPrint(selectedValue.toString());
                              });
                            },
                          ),
                        ),
                        const SizedBox(height: 5),
                      ],
                    )
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
