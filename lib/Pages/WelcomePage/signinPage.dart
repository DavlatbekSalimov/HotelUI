import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel/Pages/VerifyPage/verifyAccountPage.dart';
import 'package:hotel/widgets/MyElevationbutton.dart';
import 'package:hotel/widgets/MyTextFild.dart';
import 'package:hotel/widgets/appbarbottomText.dart';

class SiginPages extends StatelessWidget {
  const SiginPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5FAFE),
      appBar: AppBar(
        backgroundColor: Color(0xFFF5FAFE),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppbarBottomText(
              first: "Welcome",
              last: "Back",
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Text(
                'We missed you! Login to continue your journey with us.',
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: const Color.fromRGBO(0, 0, 0, 0.55)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  MyTextfilld(
                    suffixIcon: Icon(Icons.email_outlined),
                    hintTexte: "Email Address",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyTextfilld(
                    suffixIcon: Icon(Icons.key),
                    hintTexte: "Password",
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                " Forgot Password?",
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xFFFFD700),
                  fontSize: 14,
                  color: const Color(0xFFFFD700),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: MyElevatedButtom(
                text: 'Login',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => VerifyAccount(),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 70,
                  height: 1,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  "Or signup with",
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF7F7F7F),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 70,
                  height: 1,
                  color: Colors.black,
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Material(
                  shadowColor: Color.fromRGBO(0, 126, 242, 0.25),
                  elevation: 8,
                  borderRadius: BorderRadius.circular(40),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 40,
                    child: SvgPicture.asset("assets/icons/google.svg"),
                  ),
                ),
                SizedBox(
                  width: 22,
                ),
                Material(
                  borderRadius: BorderRadius.circular(40),
                  shadowColor: Color.fromRGBO(0, 126, 242, 0.25),
                  elevation: 8,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 40,
                    child: SvgPicture.asset("assets/icons/facebook.svg"),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 52,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black54),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xFFFFD700),
                      fontSize: 14,
                      color: const Color(0xFFFFD700),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
