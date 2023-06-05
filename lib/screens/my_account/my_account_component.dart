import 'package:flutter/material.dart';

class AccountAttribute {
  static InkWell nameofAccountAttribute(label, VoidCallback onTap) => InkWell(
    onTap: onTap,
    child: Container(
      height: 35,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500
            ),
          ),
        ],
      ),
    ),
  );
}