import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel/Pages/BookingSummmaryPage/bookingPage.dart';
import 'package:hotel/widgets/MyElevationbutton.dart';
import 'package:hotel/widgets/MyTextFild.dart';

class ShowModalBottomSheet extends StatefulWidget {
  const ShowModalBottomSheet({
    super.key,
  });

  @override
  State<ShowModalBottomSheet> createState() => _ShowModalBottomSheetState();
}

class _ShowModalBottomSheetState extends State<ShowModalBottomSheet> {
  RangeValues _rangeValues = RangeValues(0.1, 0.5);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(
      _rangeValues.start.toString(),
      _rangeValues.end.toString(),
    );
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.80,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Cancel",
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Text(
                  "Filter",
                  style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF007EF2)),
                ),
                Text(
                  "Resent",
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ],
            ),
            Text(
              "Sort By",
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: const Color(0xFF1E1E1E),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const MyTextfilld(
              hintTexte: "Price Lower to Higher",
              suffixIcon: Icon(Icons.attach_money),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Ratings",
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: const Color(0xFF1E1E1E),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container_add(
                  color: Colors.white,
                  text: "1",
                ),
                Container_add(
                  color: Colors.white,
                  text: "2",
                ),
                Container_add(
                  text: "3",
                  color: Color(0xFF007EF2),
                ),
                Container_add(
                  color: Colors.white,
                  text: "4",
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Price Ranges",
              style: GoogleFonts.openSans(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1E1E1E),
              ),
            ),
            RangeSlider(
              values: _rangeValues,
              divisions: 10,
              labels: labels,
              onChanged: (onChache) {
                setState(() {
                  _rangeValues = onChache;
                });
              },
            ),
            SizedBox(
              height: 26,
            ),
            Text(
              r"$90-$350",
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Facilities",
              style: GoogleFonts.openSans(
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MyElevatedButtom(
              text: 'APPLY',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (cintex) => BookingPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
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
