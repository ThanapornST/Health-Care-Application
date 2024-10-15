import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:healthcares/screen/CategoryScreen.dart';
import 'package:healthcares/screen/SelectCalcultion.dart';
import 'package:healthcares/screen/Table_Calendar.dart';
import 'package:healthcares/screen/exercise.dart';


class CalculateFoodCalories extends StatefulWidget {
  const CalculateFoodCalories({super.key});

  @override
  State<CalculateFoodCalories> createState() => _CalculateFoodCaloriesState();
}

class _CalculateFoodCaloriesState extends State<CalculateFoodCalories> {
  int _page = 0;

  final List<Widget> _pages = [
    const SelectCalcultion(),
    const CategoryScreen(),
    const Center(child: Text('Favorites Page')),
    const TableCalendarScreen(),
    const ExerciseScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: IndexedStack(
        index: _page,
        children: _pages,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: const Color.fromARGB(255, 255, 255, 237),
        color: const Color.fromARGB(255, 77, 63, 44),
        animationDuration: const Duration(milliseconds: 300),
        items: const <Widget>[
          Icon(Icons.home, size: 26, color: Color.fromARGB(255, 0, 0, 0)),
          Icon(Icons.fastfood, size: 26, color: Color.fromARGB(255, 0, 0, 0)),
          Icon(Icons.favorite, size: 26, color: Color.fromARGB(255, 0, 0, 0)),
          Icon(Icons.calendar_month_outlined,
              size: 26, color: Color.fromARGB(255, 0, 0, 0)),
          Icon(Icons.directions_run,
              size: 26, color: Color.fromARGB(255, 0, 0, 0)),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
    );
  }
}
