import 'package:flutter/material.dart';

class ProfileSetupAppBar extends StatelessWidget {
  const ProfileSetupAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
        margin: const EdgeInsets.fromLTRB(20,5,20,0),
        height: height * 0.15,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Profile Setup',
                  style: TextStyle(
                      fontSize: 26
                  ),
                ),
                // SizedBox(height: 2),
                Text('Please set your profile to get started',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13
                  ),
                )
              ],
            ),
            // Expanded(child: Container()),
            const Image(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/anygari.png'),
              width: 75,
              height: 75,
            )
          ],
        ),
      );
  }
}
