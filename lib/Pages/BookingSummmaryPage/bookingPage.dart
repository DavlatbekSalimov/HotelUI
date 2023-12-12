import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel/Pages/BookingSummmaryPage/bookingIo.dart';
import 'package:hotel/Pages/PaymentPage/payment/payment_page.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

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
            'Booking Summary',
            style: GoogleFonts.openSans(
              color: const Color(0xFF007EF2),
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 26),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/bali.png',
                    width: 116,
                    height: 78,
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'AYANA Resort',
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Bali, Indonesia',
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            r'$350 USD',
                            style: GoogleFonts.roboto(
                              color: const Color(0xFF007EF2),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            r'/night',
                            style: GoogleFonts.roboto(
                              color: Colors.grey.shade900,
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BookingIO(text1: 'Booking Date', text2: '1-Oct-2023  '),
                  BookingIO(text1: 'Check-in', text2: '24-Oct-2023'),
                  BookingIO(text1: 'Check-out', text2: '26-Oct-2023'),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        'Guests',
                        style: GoogleFonts.roboto(
                          color: const Color(0xFF252424),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(width: 212),
                      Text(
                        '3',
                        style: GoogleFonts.roboto(
                          color: const Color(0xFF252400),
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Text(
                        'Room(s)',
                        style: GoogleFonts.roboto(
                          color: const Color(0xFF252424),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(width: 200),
                      Text(
                        '1',
                        style: GoogleFonts.roboto(
                          color: const Color(0xFF252400),
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            const Divider(
              height: 2,
              color: Color(0xFFA99B9B),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Text(
                        'Amount',
                        style: GoogleFonts.roboto(
                          color: const Color(0xFF252424),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(width: 204),
                      Text(
                        r'$350x2',
                        style: GoogleFonts.roboto(
                          color: const Color(0xFF252400),
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Text(
                        'Tax',
                        style: GoogleFonts.roboto(
                          color: const Color(0xFF252424),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(width: 236),
                      Text(
                        r'$30',
                        style: GoogleFonts.roboto(
                          color: const Color(0xFF252400),
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Text(
                        'Total',
                        style: GoogleFonts.roboto(
                          color: const Color(0xFF252424),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(width: 226),
                      Text(
                        r'$730',
                        style: GoogleFonts.roboto(
                          color: const Color(0xFF252400),
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.start,
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  fixedSize: const Size(double.maxFinite, 48),
                  alignment: Alignment.center,
                  backgroundColor: const Color(0xFF007EF2),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymenPage(),
                    ),
                  );
                },
                child: Text(
                  'CONTINUE TO PAGE',
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
          ],
        ));
  }
}
