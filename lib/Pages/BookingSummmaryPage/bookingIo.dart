import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class BookingIO extends StatelessWidget {
  String text1;
  String text2;
  BookingIO({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1,
            style: GoogleFonts.roboto(
              color: const Color(0xFF252424),
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(width: 40),
          Text(
            text2,
            style: GoogleFonts.roboto(
              color: const Color(0xFF252400),
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.start,
          )
        ],
      ),
    );
  }
}
