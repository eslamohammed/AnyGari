import 'package:flutter/material.dart';
import 'package:transport/screens/home/offer/offer_details_screen.dart';

class OfferScreen extends StatefulWidget {
  const OfferScreen({Key? key}) : super(key: key);

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Offers',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: Column(
          children: [
            Container(
              height: 160,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/vechile_image.png'))
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 0),
              title: Text('Share our app with friends and get 15% Off on your next ride',
                style: TextStyle(
                  fontSize: 14
                ),
              ),
              subtitle: Text('*Term & Condition applies',
                style: TextStyle(
                  fontSize: 8
                ),
              ),
              
              trailing: TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => OfferDetailScreen()));
                  },
                  child: Text('Learn More')),
            )
          ],
        ),
      ),
    );
  }
}
