import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';


class HomeBottomNavigationBar extends StatefulWidget {
  final Icon firstIcon;
  final VoidCallback onPressedFirstIcon;
  final Icon secoundIcon;
  final VoidCallback onPressedSecoundIcon;

  const HomeBottomNavigationBar({Key? key, required this.firstIcon, required this.onPressedFirstIcon, required this.secoundIcon, required this.onPressedSecoundIcon}) : super(key: key);

  @override
  State<HomeBottomNavigationBar> createState() => _HomeBottomNavigationBarState();
}

class _HomeBottomNavigationBarState extends State<HomeBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade200,
                blurStyle: BlurStyle.outer,
                blurRadius: 10
            )
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: widget.onPressedFirstIcon,
              icon: widget.firstIcon
          ),
          IconButton(
              onPressed: widget.onPressedSecoundIcon,
              icon: widget.secoundIcon,
              )
        ],
      ),
    );
  }
}
