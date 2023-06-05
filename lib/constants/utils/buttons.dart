import 'package:flutter/material.dart';

import 'colors_package.dart';

class PrimaryButton extends StatelessWidget {
  final double width;
  final String label;
  final VoidCallback onPressed;
  const PrimaryButton({Key? key, required this.width, required this.label, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width,
      height: height * 0.075,
      child: ElevatedButton(
          onPressed: onPressed,
          child: Text(label,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                letterSpacing: 1.5
            ),
          )
      ),
    );
  }
}

class PrimaryBottomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const PrimaryBottomButton({Key? key, required this.label, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.075,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            elevation: 0.4,
            backgroundColor: primaryColor,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.zero,
                ),
                side: BorderSide.none
            ),
          ),
          child: Text(label,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                letterSpacing: 1.5
            ),
          )
      ),
    );
  }
}

