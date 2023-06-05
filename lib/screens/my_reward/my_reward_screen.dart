import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:transport/constants/utils/utils.dart';

import '../../constants/utils/colors_package.dart';

class MyRewardScreen extends StatefulWidget {
  const MyRewardScreen({Key? key}) : super(key: key);

  @override
  State<MyRewardScreen> createState() => _MyRewardScreenState();
}

class _MyRewardScreenState extends State<MyRewardScreen> {

  bool _isVisible = false;
  bool _isVisible1 = false;
  bool _isVisible2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
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

                Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const Positioned(
                        child: Image(
                          image: AssetImage('assets/images/referral.png'),
                          height: 300,
                          fit: BoxFit.fill,
                        ),

                      ),
                      Text('Refer your friend and\nearn reward',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      Positioned(
                          top: 240,
                          left: 68,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('120',
                                style: TextStyle(
                                    fontSize: 42,
                                    fontWeight: FontWeight.w600
                                ),
                              ),
                              Text('Reward Points')
                            ],
                          )
                      )

                    ]
                ),
                const SizedBox(height: 50),

                Container(
                  width: 200,
                  height: 80,
                  decoration: BoxDecoration(
                      color: BackGroundColor,
                      borderRadius: BorderRadius.circular(15)
                  ),

                  child: DottedBorder(
                      padding: const EdgeInsets.all(15),
                      color: Colors.grey,
                      borderType: BorderType.RRect,
                      radius: Radius.circular(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('AFUL',
                            style: TextStyle(
                                fontSize: 26,
                                letterSpacing: 15,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          VerticalDivider(
                            thickness: 0.7,
                            color: Colors.black,
                          ),
                          Text('Copy\nCode',
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w600
                            ),
                          )
                        ],
                      )
                  ),
                ),
              ],
            ),

            SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Frequently Asked Question',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  SizedBox(height: 10),
                  
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _isVisible = !_isVisible;
                      });
                    },
                    child: Container(
                      height: 40,
                      // constraints: BoxConstraints(minWidth: 40),
                      decoration: BoxDecoration(
                       border: Border(
                         bottom: BorderSide(
                           color: Colors.grey.shade300
                         )
                       ),
                      ),
                      child: Row(
                        children: [
                          const Text('What about reward points ?'),
                          Expanded(child: Container()),
                          Icon(Icons.keyboard_arrow_down)
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _isVisible,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pellentesque pellentesque porttitor neque. Purus elementum molestie tortor eu. Amet, congue venenatis vitae cursus in rhoncus, nisi lectus vel. Pharetra nunc a, aliquet sed. Odio sit tincidunt vel vel morbi sit at faucibus. Magna et bibendum risus duis.'
                            'Porta et scelerisque eu ultrices vitae. Laoreet eget risus venenatis rhoncus vitae ac. A nulla auctor tortor varius varius. Elit ipsum tellus vel porttitor consectetur montes, vitae vivamus. Feugiat egestas urna massa neque. Netus diam placerat semper sagittis consectetur. Sed sit ridiculus adipiscing nisl pharetra, eu eget nullam. Suspendisse risus aliquam tempus, nunc feugiat neque massa urna ac. Viverra venenatis nunc.',
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _isVisible1 = !_isVisible1;
                      });
                    },
                    child: Container(
                      height: 40,
                      // constraints: BoxConstraints(minWidth: 40),
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.grey.shade300
                            )
                        ),
                      ),
                      child: Row(
                        children: [
                          const Text('What about reward points ?'),
                          Expanded(child: Container()),
                          Icon(Icons.keyboard_arrow_down)
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _isVisible1,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pellentesque pellentesque porttitor neque. Purus elementum molestie tortor eu. Amet, congue venenatis vitae cursus in rhoncus, nisi lectus vel. Pharetra nunc a, aliquet sed. Odio sit tincidunt vel vel morbi sit at faucibus. Magna et bibendum risus duis.'
                            'Porta et scelerisque eu ultrices vitae. Laoreet eget risus venenatis rhoncus vitae ac. A nulla auctor tortor varius varius. Elit ipsum tellus vel porttitor consectetur montes, vitae vivamus. Feugiat egestas urna massa neque. Netus diam placerat semper sagittis consectetur. Sed sit ridiculus adipiscing nisl pharetra, eu eget nullam. Suspendisse risus aliquam tempus, nunc feugiat neque massa urna ac. Viverra venenatis nunc.',
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  GestureDetector(
                    onTap: (){
                      setState(() {
                        _isVisible2 = !_isVisible2;
                      });
                    },
                    child: Container(
                      height: 40,
                      // constraints: BoxConstraints(minWidth: 40),
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.grey.shade300
                            )
                        ),
                      ),
                      child: Row(
                        children: [
                          const Text('What about reward points ?'),
                          Expanded(child: Container()),
                          Icon(Icons.keyboard_arrow_down)
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _isVisible2,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pellentesque pellentesque porttitor neque. Purus elementum molestie tortor eu. Amet, congue venenatis vitae cursus in rhoncus, nisi lectus vel. Pharetra nunc a, aliquet sed. Odio sit tincidunt vel vel morbi sit at faucibus. Magna et bibendum risus duis.'
                            'Porta et scelerisque eu ultrices vitae. Laoreet eget risus venenatis rhoncus vitae ac. A nulla auctor tortor varius varius. Elit ipsum tellus vel porttitor consectetur montes, vitae vivamus. Feugiat egestas urna massa neque. Netus diam placerat semper sagittis consectetur. Sed sit ridiculus adipiscing nisl pharetra, eu eget nullam. Suspendisse risus aliquam tempus, nunc feugiat neque massa urna ac. Viverra venenatis nunc.',
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: PrimaryBottomNavBar(context),
    );
  }
}
