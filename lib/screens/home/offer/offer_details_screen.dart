import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class OfferDetailScreen extends StatefulWidget {
  const OfferDetailScreen({Key? key}) : super(key: key);

  @override
  State<OfferDetailScreen> createState() => _OfferDetailScreenState();
}

class _OfferDetailScreenState extends State<OfferDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Offers Details ',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: Column(
            children: [
              Container(
                height: 160,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/vechile_image.png'))
                ),
              ),
             const ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 0),
                title: Text('Share our app with friends and get 15% Off on your next ride',
                  style: TextStyle(
                      fontSize: 14
                  ),
                ),
                subtitle: Text('*Term & Condition applies ',
                  style: TextStyle(
                      fontSize: 8
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              
              Text(lorem(paragraphs: 2, words: 100))
            ],
          ),
        ),
      ),
    );
  }
}
