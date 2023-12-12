import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel/Pages/PaymentPage/payment/card_informations.dart';
import 'package:hotel/Pages/homeWelcome/homeWelcome.dart';

class PaymenPage extends StatelessWidget {
  const PaymenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Color(0xFF007EF2),
          ),
        ),
        centerTitle: true,
        title: Text(
          'Payment',
          style: GoogleFonts.openSans(
            color: const Color(0xFF007EF2),
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              height: 116,
              width: double.infinity,
              color: const Color.fromRGBO(0, 126, 242, 0.12),
              child: Column(
                children: [
                  Text(
                    'Total Price',
                    style: GoogleFonts.openSans(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    r'$750.00',
                    style: GoogleFonts.openSans(
                      color: const Color(0xFF007EF2),
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '5% vst included',
                    style: GoogleFonts.openSans(
                      color: const Color(0xFF777676),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Payment method',
              style: GoogleFonts.openSans(
                color: const Color.fromRGBO(0, 0, 0, 0.81),
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            Image.asset(
              'assets/images/cards.png',
              height: 70,
              width: 348,
            ),
            const SizedBox(height: 4),
            CardInfromations(),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
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
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConfirmedPage(),
                    ),
                  );
                },
                child: Text(
                  'PAY NOW',
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            const SizedBox(height: 64)
          ],
        ),
      ),
    );
  }
}
