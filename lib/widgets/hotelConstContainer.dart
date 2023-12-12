import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HotelsPages extends StatelessWidget {
  final String text;
  final ImageProvider image;

  const HotelsPages({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 308,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 18),
            width: 250,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CupertinoColors.white),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: image,
                      fit: BoxFit.cover,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Chip(
                              label: Text(
                                "10% OFF",
                                style: GoogleFonts.openSans(
                                    fontSize: 8, fontWeight: FontWeight.w400),
                              ),
                              backgroundColor:
                                  const Color.fromRGBO(0, 126, 242, 0.12),
                              side: BorderSide.none,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18)),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Chip(
                              label: Row(
                                children: [
                                  const Icon(
                                    Icons.star_rate,
                                    color: Colors.yellow,
                                    size: 16,
                                  ),
                                  Text(
                                    " 4.5 ",
                                    style: GoogleFonts.openSans(
                                        fontSize: 8,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              backgroundColor:
                                  const Color.fromRGBO(0, 126, 242, 0.12),
                              side: BorderSide.none,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18)),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.favorite_border,
                              color: Color(0xFF007EF2),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "AYANA Resort",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: const Color.fromRGBO(0, 0, 0, 0.81),
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          size: 15,
                          color: Color(0xFF7F7F7F),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Bali, Indonesia",
                          style: GoogleFonts.roboto(
                            color: const Color(0xFF7F7F7F),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          " \$$text\$",
                          style: GoogleFonts.roboto(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF007EF2),
                          ),
                        ),
                        Text(
                          " /night",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: const Color.fromRGBO(0, 0, 0, 0.81),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: 5,
      ),
    );
  }
}
