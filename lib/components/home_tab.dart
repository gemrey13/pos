import 'package:flutter/material.dart';

Widget homeTab({
  required String icon,
  required String title,
  required bool isActive,
}) {
  return Container(
    width: 180,
    margin: const EdgeInsets.only(right: 26),
    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: const Color(0xff1f2029),
      border: isActive
          ? Border.all(color: Colors.deepOrangeAccent, width: 3)
          : Border.all(color: const Color(0xff1f2029), width: 3),
    ),
    child: Row(
      children: [
        Image.asset(icon, width: 38),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
