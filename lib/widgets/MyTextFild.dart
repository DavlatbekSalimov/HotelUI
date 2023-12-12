import 'package:flutter/material.dart';

class MyTextfilld extends StatelessWidget {
  final String? topText;
  final String? hintTexte;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const MyTextfilld({
    super.key,
    this.hintTexte,
    this.prefixIcon,
    this.suffixIcon,
    this.topText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          topText ?? '',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 8,
        ),
        TextField(
          decoration: InputDecoration(
            //  label: Text('Username'),
            hintText: hintTexte,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
