import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmedPage extends StatelessWidget {
  const ConfirmedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              'assets/images/img.png',
              height: 364,
              width: 386,
            ),
            const SizedBox(height: 48),
            Text(
              'Congratulations!!',
              style: GoogleFonts.openSans(
                color: const Color(0xFF007EF2),
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              'Your hotel stay is secured.\nCounting down to your\ndream vacation!',
              style: GoogleFonts.openSans(
                color: const Color(0xFF777676),
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 66),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  fixedSize: const Size(double.maxFinite, 48),
                  alignment: Alignment.center,
                  backgroundColor: const Color(0xFF007EF2),
                ),
                onPressed: () {
                  //          Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => HomePage(),
                  //   ),
                  // );
                },
                child: Text(
                  'GO HOME',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {},
              child: Text(
                'VIEW E-RECIEPT',
                style: GoogleFonts.roboto(
                  color: const Color(0xFFFFD700),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline,
                  decorationColor: const Color(0xFFFFD700),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
