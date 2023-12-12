import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HotelDetView extends StatelessWidget {
  const HotelDetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: CupertinoButton(
          child: const Icon(
            CupertinoIcons.arrow_left,
            color: Color(0xFF007EF2),
          ),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Text(
          "Hotel Detail",
          style: GoogleFonts.openSans(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF007EF2),
          ),
        ),
        actions: [
          CupertinoButton(
              child: const Icon(
                Icons.share,
                color: Color(0xFF007EF2),
                size: 24,
              ),
              onPressed: () {}),
          CupertinoButton(
              child: const Icon(
                Icons.favorite_outline,
                color: Color(0xFF007EF2),
                size: 24,
              ),
              onPressed: () {})
        ],
      ),
      backgroundColor: const Color(0xFFF5FAFE),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                "assets/images/ayana.png",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const SizedBox(
                    height: 26,
                  ),
                  Row(
                    children: [
                      Text(
                        "AYANA Resort",
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.telegram,
                        size: 40,
                        color: Colors.blue,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 32,
                        width: 70,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(14, 0, 125, 242),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "10% OFF",
                            style: GoogleFonts.openSans(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF007EF2),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 32,
                        width: 144,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(14, 0, 125, 242),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              "4.5 (120 Reviews)",
                              style: GoogleFonts.openSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xFF007EF2),
                                  decoration: TextDecoration.underline,
                                  decorationColor: const Color(0xFF007EF2)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        size: 16,
                        color: Color(0xFF7F7F7F),
                      ),
                      Text(
                        "  Karang Mas Estate, Jimbaran, Bali, Indonesia",
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: const Color(0xFF7F7F7F),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Description",
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nestled in the lush tropical paradise of Jimbaran, Bali, AYANA Resort and",
                        style: GoogleFonts.roboto(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          color: const Color(0xFF7F7F7F),
                        ),
                      ),
                      Text(
                        "Spa offers an enchanting escape for travelers seeking luxury, relaxation,",
                        style: GoogleFonts.roboto(
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          color: const Color(0xFF7F7F7F),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "and breathtaking ocean views... ",
                            style: GoogleFonts.roboto(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: const Color(0xFF7F7F7F),
                            ),
                          ),
                          Text(
                            "Read more",
                            style: GoogleFonts.openSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFFFFD700),
                                decoration: TextDecoration.underline,
                                decorationColor: const Color(0xFFFFD700)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Contact Info",
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: const CircleAvatar(
                      radius: 30,
                      backgroundColor: Color.fromARGB(43, 0, 125, 242),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    title: Text(
                      "John Mail",
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      "Receptionist",
                      style: GoogleFonts.roboto(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: const Color(0xFF007EF2),
                          child: SvgPicture.asset("assets/icons/call.svg"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: const Color(0xFF007EF2),
                          child: SvgPicture.asset("assets/icons/message.svg"),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Gallery",
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 80,
                    width: double.maxFinite,
                    color: Colors.white,
                    child: ListTile(
                      title: Text(
                        r"$350 USD",
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF007EF2),
                        ),
                      ),
                      subtitle: Text(
                        "/night",
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ),
                      ),
                      trailing: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF007EF2),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        child: const Text(
                          "BOOK NOW",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
