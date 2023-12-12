// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:hotel/Pages/HomePage/homePage.dart';
import 'package:hotel/widgets/MyElevationbutton.dart';
import 'package:hotel/widgets/MyTextFild.dart';
import 'package:hotel/widgets/counter.dart';

class InterensPage extends StatefulWidget {
  const InterensPage({super.key});

  @override
  State<InterensPage> createState() => _InterensPageState();
}

class _InterensPageState extends State<InterensPage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              'assets/images/appbarWelcome.png',
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment(0, 1),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(28),
                      topRight: Radius.circular(28)),
                  color: Colors.white),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        'Welcome to your next Adventure!',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF007EF2)),
                      ),
                    ),
                    Text(
                      'Discover the Perfect Stay with WanderStay',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.amber),
                    ),
                    MyTextfilld(
                      hintTexte: 'Ex: New York',
                      topText: 'Where?',
                      prefixIcon: Icon(Icons.location_on_outlined),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 150,
                          child: MyTextfilld(
                            hintTexte: 'DD/MM/YY',
                            topText: 'Where?',
                            suffixIcon: Icon(Icons.calendar_month),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: MyTextfilld(
                            hintTexte: 'DD/MM/YY',
                            topText: 'Check-out',
                            suffixIcon: Icon(Icons.calendar_month),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CounterWidget(topLefttext: 'Guests'),
                          CounterWidget(topLefttext: 'Room'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: SizedBox(
                        child: MyElevatedButtom(
                          text: 'FIND',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (contex) => HomePage(),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black54,
        useLegacyColorScheme: true,
        selectedItemColor: Colors.blueAccent,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'My bookings'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onTap: ontapped,
        currentIndex: _currentindex,
      ),
    );
  }

  int _currentindex = 0;
  void ontapped(index) {
    setState(() {
      _currentindex = index;
    });
  }
}
