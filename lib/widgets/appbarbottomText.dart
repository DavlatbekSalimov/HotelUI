import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppbarBottomText extends StatelessWidget {
  final String first;
  final String last;
  const AppbarBottomText({
    super.key,
    required this.first,
    required this.last,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          first,
          style: GoogleFonts.openSans(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          last,
          style: GoogleFonts.openSans(
            color: Colors.indigoAccent,
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
