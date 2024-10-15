import 'package:flutter/material.dart';
import 'package:healthcares/widget/button_manu.dart';
import 'package:healthcares/screen/PersonnolDetail.dart';
import 'package:healthcares/widget/intro/swiper_images.dart';

class HealthCares extends StatefulWidget {
  const HealthCares({super.key});

  @override
  State<HealthCares> createState() => _HealthCaresState();
}

class _HealthCaresState extends State<HealthCares> {
  var activeScreen = 'start-screen';

  void openScreen() {
    setState(() {
      activeScreen = 'PersonnolDetails-screen';
    });
  }

  void openSelection() {
    setState(() {
      activeScreen = 'SelectWhatYouWant';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = SwiperImages(openScreen);

    if (activeScreen == 'PersonnolDetails-screen') {
      screenWidget = const PersonnolDetails();
    }

    if (activeScreen == 'SelectWhatYouWant') {
      screenWidget = const CalculateFoodCalories();
    }

    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 252, 251, 240),
      ),
      home: Scaffold(
        body: Container(
          child: screenWidget,
        ),
      ),
    );
  }
}
