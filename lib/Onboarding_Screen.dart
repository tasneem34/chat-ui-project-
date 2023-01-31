import 'package:flutter/material.dart';
import 'package:swipebuttonflutter/swipebuttonflutter.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            height: 400,
            decoration: const BoxDecoration(
              borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(20.0),
                topEnd: Radius.circular(20.0),
              ),
              image: DecorationImage(
                  image: AssetImage("images/chat1.PNG"), fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Center(
            child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(20.0),
                  topEnd: Radius.circular(20.0),
                )),
                child: const Text(
                  'Express your self with moji experiences',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Chat using avatar emoji gives a '
                'different impression, dore to try it?',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          Expanded(
              child: Center(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SwipingButton(
                  text: "You did it ",
                  swipeButtonColor: Colors.white,
                  backgroundColor: Colors.blue,
                  iconColor: Colors.blue,
                  swipePercentageNeeded: 0.30,
                  onSwipeCallback: () {
                    print("Called back");
                  }),
            ),
          )),
        ],
      ),
    ));
  }
}
