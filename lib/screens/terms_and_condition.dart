import 'package:flutter/material.dart';

import '../constants/utils/utils.dart';

class TermsAndConditionScreen extends StatelessWidget {
  const TermsAndConditionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(height: 40),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text('Terms & Conditions',

                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pellentesque pellentesque porttitor neque. Purus elementum molestie tortor eu. Amet, congue venenatis vitae cursus in rhoncus, nisi lectus vel. Pharetra nunc a, aliquet sed. Odio sit tincidunt vel vel morbi sit at faucibus. Magna et bibendum risus duis.'
                      'Porta et scelerisque eu ultrices vitae. Laoreet eget risus venenatis rhoncus vitae ac. A nulla auctor tortor varius varius. Elit ipsum tellus vel porttitor consectetur montes, vitae vivamus. Feugiat egestas urna massa neque. Netus diam placerat semper sagittis consectetur. Sed sit ridiculus adipiscing nisl pharetra, eu eget nullam. Suspendisse risus aliquam tempus, nunc feugiat neque massa urna ac. Viverra venenatis nunc.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey
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
