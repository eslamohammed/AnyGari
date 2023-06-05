import 'package:flutter/material.dart';

import '../../constants/utils/utils.dart';
import 'notification_messages.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.35,
                child: Center(
                  child: Text('Notification',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 28
                    ),
                  ),
                ),
              ),

              NotificationMessage()
            ],
          )
      ),
      bottomNavigationBar: PrimaryBottomNavBar(context),
    );
  }
}
