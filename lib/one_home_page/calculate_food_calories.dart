import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:healthcares/widget/button_manu_square.dart';

class CalculateFoodCalories extends StatefulWidget {
  const CalculateFoodCalories({super.key});

  @override
  State<CalculateFoodCalories> createState() => _CalculateFoodCaloriesState();
}

class _CalculateFoodCaloriesState extends State<CalculateFoodCalories> {
  int _page = 0;

  final List<Widget> _pages = [
    const Padding(
      padding: EdgeInsets.all(60),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:
              CrossAxisAlignment.stretch,
          children: [
            Text(
              'Select what you want to fill in',
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 77, 63, 44),
              ),
            ),
            SizedBox(height: 50),
            ButtonManuSquare(text: 'คำนวน'),
            SizedBox(height: 20),
            ButtonManuSquare(text: 'จัดตาราง'),
            SizedBox(height: 20),
            ButtonManuSquare(text: 'การพักผ่อน'),
            SizedBox(height: 20),
            ButtonManuSquare(text: 'การออกกำลังกาย'),
            SizedBox(height: 40),
          ],
        ),
      ),
    ),
    const Padding(
      padding: EdgeInsets.all(60),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:
              CrossAxisAlignment.stretch,
          children: [
            Text(
              'คำนวณแคลลอรี่อาหาร',
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 77, 63, 44),
              ),
            ),
            SizedBox(height: 50),
            ButtonManuSquare(text: 'เมนูอาหาร'),
            SizedBox(height: 20),
            ButtonManuSquare(text: 'น้ำดื่ม'),
            SizedBox(height: 20),
            ButtonManuSquare(text: 'คำนวณ'),
          ],
        ),
      ),
    ),
    const Center(child: Text('Favorites Page')),
    const Center(child: Text('calendar_today Page')),
    const Padding(
      padding: EdgeInsets.all(60),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:
              CrossAxisAlignment.stretch,
          children: [
            Text(
              'Exercise Today',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 77, 63, 44),
              ),
            ),
            SizedBox(height: 50),
            ButtonManuSquare(text: 'ว่ายน้ำ'),
            SizedBox(height: 20),
            ButtonManuSquare(text: 'วิ่ง'),
            SizedBox(height: 20),
            ButtonManuSquare(text: 'วอลเลย์บอล'),
            SizedBox(height: 20),
            ButtonManuSquare(text: 'ฟุตบอต'),
            SizedBox(height: 20),
            ButtonManuSquare(text: 'บาส'),
            SizedBox(height: 20),
          ],
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personnol Details'),
        backgroundColor: const Color.fromARGB(255, 77, 63, 44),
      ),
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
