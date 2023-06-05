import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:transport/constants/utils/utils.dart';
import 'package:transport/screens/about_us_screen.dart';
import 'package:transport/screens/driver_request/driver_request_screen.dart';
import 'package:transport/screens/my_account/my_account_component.dart';
import 'package:transport/screens/my_reward/my_reward_screen.dart';
import 'package:transport/screens/rating/rating_screen.dart';
import 'package:transport/screens/support_screen.dart';
import 'package:transport/screens/trip_info/my_ride_screen.dart';

import '../../constants/utils/colors_package.dart';
import '../payment 2/another_payment_option.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({Key? key}) : super(key: key);

  @override
  State<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {

  String url = 'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80';

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
         child: SingleChildScrollView(
           child: Column(
             children: [
               // APPBAR
               ConstrainedBox(
                 constraints: BoxConstraints(
                     minHeight: MediaQuery.of(context).size.height * 0.32,
                 ),
                 child: Container(
                   padding: const EdgeInsets.all(20),
                   // height: MediaQuery.of(context).size.height * 0.32,
                   decoration: BoxDecoration(
                       color: Colors.white,
                       boxShadow: [
                         BoxShadow(
                             color: Colors.grey.shade400,
                             blurStyle: BlurStyle.outer,
                             blurRadius: 10
                         )
                       ]
                   ),
                   child: Center(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Stack(
                           clipBehavior: Clip.none,
                           children: [
                             Container(
                               width: 112,
                               height: 112,
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(15)
                               ),
                               child: ClipRRect(
                                 borderRadius: BorderRadius.circular(15),
                                 child: CachedNetworkImage(
                                   imageUrl: url,
                                   placeholder: (context, url)=> const SizedBox(
                                       height: 55,
                                       width: 55,
                                       child: Center(
                                           child: CircularProgressIndicator(
                                             color: primaryColor,
                                             strokeWidth: 1.0,
                                           ))
                                   ),
                                 ),
                               ),
                             ),
                             Positioned(
                              top: 90,
                               left: 90.0,
                               child: SizedBox(
                                 width: 30,
                                 height: 30,
                                 child: FloatingActionButton.small(
                                   backgroundColor: primaryColor,
                                   elevation: 3.0,
                                   onPressed: () {},
                                   child: const Icon(Icons.camera_alt,
                                     color: SecoundaryTextColor,
                                     size: 15,
                                   ),
                                 ),
                               ),
                             ),
                           ]
                         ),
                         const Text('Kisa Mishra',
                           style: TextStyle(
                             fontSize: 32,
                           ),
                         ),
                         const Text('+91-333 333 4444',
                           style: TextStyle(
                             fontWeight: FontWeight.w500,
                             color: Colors.grey
                           ),
                         ),

                       ],
                     ),
                   ),
                 ),
               ),
               SizedBox(height: 10),

               SizedBox(
                 child: ListView(
                   shrinkWrap: true,
                   physics: const NeverScrollableScrollPhysics(),
                   children: [
                     AccountAttribute.nameofAccountAttribute('Trip Info', (){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => MyRideScreen()));
                     }),
                     const Divider(),

                     AccountAttribute.nameofAccountAttribute('Driver Request', (){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => DriverRequestScreen()));
                     }),
                     const Divider(),

                     AccountAttribute.nameofAccountAttribute('My Reward', (){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => MyRewardScreen()));
                     }),
                     const Divider(),
                     
                     AccountAttribute.nameofAccountAttribute('Message', () { }),
                     const Divider(),
                     
                     AccountAttribute.nameofAccountAttribute('Payment', () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => AnotherPaymentScreen()));
                     }),
                     const Divider(),
                     
                     AccountAttribute.nameofAccountAttribute('Support & Help', () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => SupportScreen()));
                     }),
                     const Divider(),

                     AccountAttribute.nameofAccountAttribute('Rating', () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => RatingScreen()));
                     }),
                     const Divider(),

                     AccountAttribute.nameofAccountAttribute('About Us', () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUsScreen()));
                     }),
                     const Divider(),
                   ],
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
