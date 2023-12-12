import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel/widgets/MyTextFild.dart';
import 'package:hotel/widgets/bottomShade.dart';
import 'package:hotel/widgets/hotelConstContainer.dart';
import 'package:hotel/widgets/myBottomNav.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5FAFE),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5FAFE),
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Location",
                style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              Text(
                "Bali, Indonesia",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: const Color(0xFF007EF2),
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              "assets/icons/notfication.svg",
              width: 20,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Chip(
                    side: BorderSide.none,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: const Color.fromRGBO(0, 126, 242, 0.12),
                    label: Row(
                      children: [
                        const Icon(
                          Icons.calendar_month,
                          color: Color(0xFF7F7F7F),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "24 OCT-26 OCT",
                          style: GoogleFonts.openSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                            decorationColor: const Color(0xFF007EF2),
                            color: const Color(0xFF007EF2),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Chip(
                    side: BorderSide.none,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: const Color.fromRGBO(0, 126, 242, 0.12),
                    label: Row(
                      children: [
                        Text(
                          " 3 guests ",
                          style: GoogleFonts.openSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                            decorationColor: const Color(0xFF007EF2),
                            color: const Color(0xFF007EF2),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 94,
                    width: 200,
                    child: MyTextfilld(
                      suffixIcon: Icon(Icons.search),
                      hintTexte: "Search ",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: InkWell(
                      child: Container(
                        width: 58,
                        height: 54,
                        decoration: BoxDecoration(
                          color: const Color(0xFF007EF2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 10),
                          child: SvgPicture.asset("assets/icons/settigiz.svg"),
                        ),
                      ),
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (builder) {
                            return ShowModalBottomSheet();
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Text(
                "Recommended Hotels",
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: const Color(0xFF007EF2),
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const HotelsPages(
              image: AssetImage("assets/images/hotel1.png"),
              text: "200 - 500",
            ),
            const SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Text(
                "Business Accommodates",
                style: GoogleFonts.openSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: const Color(0xFF007EF2),
                ),
              ),
            ),
            const HotelsPages(
              image: AssetImage("assets/images/ss.png"),
              text: "2000 - 3200",
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigatorBarWidget(),
    );
  }
}

class Container_add extends StatelessWidget {
  final String text;
  final Color color;

  const Container_add({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xFF7F7F7F),
        ),
        color: color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text),
          Icon(
            Icons.star_rate,
            color: Colors.yellow,
          )
        ],
      ),
    );
  }
}
