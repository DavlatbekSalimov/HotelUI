import 'package:flutter/material.dart';
import 'package:hotel/widgets/MyTextFild.dart';

class CardInfromations extends StatelessWidget {
  const CardInfromations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            MyTextfilld(
              topText: 'Card Holder Name',
              hintTexte: 'Your Name',
            ),
            SizedBox(
              height: 10,
            ),
            MyTextfilld(
              topText: 'Card Number',
              hintTexte: '**** **** ****',
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 150,
                  child: MyTextfilld(
                    topText: 'Expiry date',
                    hintTexte: 'MM/YY',
                  ),
                ),
                SizedBox(
                  width: 150,
                  child: MyTextfilld(
                    topText: 'CVV',
                    hintTexte: '****',
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
