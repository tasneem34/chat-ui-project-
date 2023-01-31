import 'package:flutter/material.dart';
import 'package:flutter_fristapplication_1/Contact_Screen2.dart';
import 'package:swipebuttonflutter/swipebuttonflutter.dart';

import 'Contects_Screen.dart';
import 'Onboarding_Screen.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(20.0),
                topEnd: Radius.circular(20.0),
              ),
              image: DecorationImage(
                  image: AssetImage("images/chat1.PNG"), fit: BoxFit.cover),
            ),
          ),
          Container(
              width: double.infinity,
              height: 250,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(20.0),
                    topEnd: Radius.circular(20.0),
                  )),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 7,
                      ),
                      child: Text(
                        'Express your self with moji experiences',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: Text(
                          'Chat using avatar emoji gives a different impression, dore to try it?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17.0,
                            color: Colors.black45,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    Expanded(
                        child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SwipingButton(
                            text: "Swipe to start",
                            swipeButtonColor: Colors.white,
                            backgroundColor: Colors.blue,
                            iconColor: Colors.blue,
                            swipePercentageNeeded: 0.30,
                            onSwipeCallback: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const ContectsScreen2()));
                            }),
                      ),
                    ))
                  ],
                ),
              )),
        ],
      ),
    )));
  }
}
