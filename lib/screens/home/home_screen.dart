import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';
import 'package:transport/screens/home/offer/offer_screen.dart';
import 'package:transport/screens/home/promo/promo_card_screen.dart';
import 'package:transport/screens/home/widget/home_appbar.dart';
import 'package:transport/screens/home/widget/home_bottomNavigationBar.dart';

import '../../constants/utils/colors_package.dart';
import '../my_account/my_account_screen.dart';
import 'widget/choose_your_car_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackGroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                // APPBAR
                const HomeAppBar(),

                // OFFERS & PROMO
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => OfferScreen()));
                        },
                        child: Section.nameofSection(context, 'assets/images/home_screen/offers.png', 'OFFERS')),
                    InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PromoCodeScreen()));
                        },
                        child: Section.nameofSection(context, 'assets/images/home_screen/promo.png', 'PROMO')),
                  ],
                ),
                const SizedBox(height: 10,),

                // CHOOSE CAR
               const ChooseYourCar()
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: HomeBottomNavigationBar(
        firstIcon: const Icon(Remix.home_fill,
          color: primaryColor,
        ),
        onPressedFirstIcon: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
        },
        secoundIcon: const Icon(Remix.account_circle_fill,
          color: Colors.grey,
        ),
        onPressedSecoundIcon: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const MyAccountScreen()));
        },
      )
    );
  }
}

