import 'package:app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      bodyTextStyle: TextStyle(fontSize: 19),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "Shop Now",
          body:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
          image: Image.asset('images/splash1.png', width: 200),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Shop Now",
          body:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
          image: Image.asset('images/splash2.png', width: 200),
          decoration: pageDecoration,
          footer: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (c) => HomeScreen()),
                );
              },
              child: Text("Let's shop"),
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
          ),
        ),
      ],
      showNextButton: false,
      showDoneButton: true,
      showBackButton: false,
      back: Text("Back"),
      next: Text("Next"),
      done: Text("Done"),
      onDone: () {},
      onSkip: () {},
      dotsDecorator: DotsDecorator(size: Size.square(20)),
    );
  }
}
