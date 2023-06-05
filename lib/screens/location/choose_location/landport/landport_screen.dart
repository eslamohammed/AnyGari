import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';
import 'package:transport/constants/utils/colors_package.dart';

import '../../../../constants/utils/utils.dart';

class LandPortScreen extends StatefulWidget {
  const LandPortScreen({Key? key}) : super(key: key);

  @override
  State<LandPortScreen> createState() => _LandPortScreenState();
}

class _LandPortScreenState extends State<LandPortScreen> {

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Landport'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
          child: Column(
            children: [
              AddressBookInputField.searchInputField(searchController, 'Find Address'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    child: InkWell(
                      onTap: () { },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text('Sort By',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF999999)
                            ),
                          ),
                          SizedBox(width: 5),

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
                children: List.generate(10, (index) =>
                    ListTile(
                      // horizontalTitleGap: 10,
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 48,
                          width: 48,
                          alignment: Alignment.center,
                          color: const Color(0xFFF9CFCF),
                          child: const Icon(Remix.ship_fill,
                            color: primaryColor,
                          ),
                        ),
                      ),
                      title: const Text('Birol',
                        style: TextStyle(
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text('Birol,birol, dinaipur',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF000000)
                            ),
                          ),
                          Text('Birol Land Port',
                              style: TextStyle(
                                  fontSize: 8,
                                color: Color(0xFF999999)
                              )
                          )
                        ],
                      ),
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
