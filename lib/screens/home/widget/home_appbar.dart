import 'package:flutter/material.dart';

import '../../notification/notification_screen.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 35, 0, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Hello, Nakul Kumar',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18
                ),
              ),
              Text('where you want to go today ?',
                style: TextStyle(
                  color: Colors.grey,
                ),
              )
            ],
          ),

          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen()));
            },
            child: Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey.shade200
                ),
                child: const Image(
                    image: AssetImage('assets/images/notification_fill.png'))
            ),
          ),
        ],
      ),
    );
  }
}
