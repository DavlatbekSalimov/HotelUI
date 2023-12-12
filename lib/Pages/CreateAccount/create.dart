import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel/Pages/WelcomePage/signinPage.dart';
import 'package:hotel/widgets/MyTextFild.dart';
import 'package:hotel/widgets/appbarbottomText.dart';

class CreatAccount extends StatefulWidget {
  const CreatAccount({super.key});

  @override
  State<CreatAccount> createState() => _CreatAccountState();
}

class _CreatAccountState extends State<CreatAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5FAFE),
      appBar: AppBar(
        backgroundColor: Color(0xFFF5FAFE),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppbarBottomText(first: 'Create', last: 'Account'),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Text(
                'Fill your information below or register with your social account.',
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
                  MyTextfilld(
                    hintTexte: "Username",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyTextfilld(
                    prefixIcon: Icon(Icons.email_outlined),
                    hintTexte: "Email Address",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MyTextfilld(
                    prefixIcon: Icon(Icons.key),
                    hintTexte: "Password",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF007EF2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fixedSize: const Size(double.maxFinite, 50),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SiginPages(),
                    ),
                  );
                },
                child: Text(
                  "Continue",
                  style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
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
                  width: 12,
                ),
                Container(
                  width: 70,
                  height: 1,
                  color: Colors.black,
                )
              ],
            ),
            const SizedBox(
              height: 10,
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
                  width: 10,
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
              height: 20,
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
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xFFFFD700),
                      fontWeight: FontWeight.w500,
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
