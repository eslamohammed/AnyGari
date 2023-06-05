import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

class PromoCodeScreen extends StatefulWidget {
  const PromoCodeScreen({Key? key}) : super(key: key);

  @override
  State<PromoCodeScreen> createState() => _PromoCodeScreenState();
}

class _PromoCodeScreenState extends State<PromoCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Promo Code',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: List.generate(10, (index) => ListTile(
            leading: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xFFE7E7E7),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Transform.rotate(
                  angle: 2,
                  child: const Icon(Remix.ticket_2_line)),
            ),
            title: const Text('Get 30% OFF on your First Ride',
              style: TextStyle(
                fontSize: 14
              ),
            ),
            subtitle: const Text('*Term & Condition applies',
              style: TextStyle(
                  fontSize: 8
              ),
            ),

            trailing: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                  color: const Color(0xFFF1F1F1),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: const Text('HVC-Jul-25A',
                style: TextStyle(fontSize: 10),
              ),
            )
          )
          ),
        ),
      ),
    );
  }
}
