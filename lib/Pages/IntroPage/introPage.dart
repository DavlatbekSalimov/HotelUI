import 'package:flutter/material.dart';
import 'package:hotel/Pages/CreateAccount/create.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment(0.5, -0.6),
              child: Image.asset(
                'assets/images/e1.png',
              ),
            ),
            Align(
              alignment: Alignment(0.4, -0.6),
              child: Image.asset('assets/images/e11.png'),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Image.asset('assets/images/e2.png'),
            ),
            // pastdagi
            Align(
              alignment: Alignment.topRight,
              child: Image.asset('assets/images/e22.png'),
            ),
            Align(
              alignment: Alignment(-1, 0.14),
              child: Image.asset(
                'assets/images/e3.png',
              ),
            ),
            Align(
              alignment: Alignment(-1, 0.14),
              child: Image.asset('assets/images/e33.png'),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.6,
              left: 20,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Unleash Your Inner Traveller',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.blue,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Your passport to a world of  extraordinary hotel \n experiences. Join us today and unlock a realm \n of comfort, luxury, and adventure.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(vertical: 18, horizontal: 100),
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (contex) => CreatAccount(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            'Start Exploring',
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.arrow_outward_rounded,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Text(
                          'Already have an account? ',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'Login',
                          style: TextStyle(color: Colors.amber, fontSize: 16),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
