import 'package:flutter/material.dart';
import 'package:healthcares/information_home_page/personnol_details.dart';
import 'package:healthcares/one_home_page/calculate_food_calories.dart';
//import 'package:healthcares/one_home_page/calculate_food_calories.dart';
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
// PersonnolDetails() 