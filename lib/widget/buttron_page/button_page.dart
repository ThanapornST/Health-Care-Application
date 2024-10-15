import 'package:flutter/material.dart';
import 'package:healthcares/screen/CategoryScreen.dart';
import 'package:healthcares/screen/Table_Calendar.dart';
import 'package:healthcares/screen/exercise.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1, 
          crossAxisSpacing: 20, 
          mainAxisSpacing: 20, 
        ),
        children: [
          Positioned(
            bottom: 30.0,
            left: 20.0,
            right: 20.0,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CategoryScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15), 
                  side: const BorderSide(
                    color: Colors.black, 
                    width: 2.0, 
                  ),
                ),
              ),
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment:
                    MainAxisAlignment.center,
                crossAxisAlignment:
                    CrossAxisAlignment.center, 
                children: [
                  Icon(Icons.fastfood,
                      size: 50, color: Colors.black), 
                  SizedBox(height: 10), 
                  Text(
                    "การรับประทานอาหาร", 
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "กรอกข้อมูลอาหารที่รับประทานในแต่ละวัน", 
                    style: TextStyle(
                        fontSize: 12, color: Color.fromARGB(255, 0, 0, 0)),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 30.0,
            left: 20.0,
            right: 20.0,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ExerciseScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                backgroundColor: Colors.white, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15), 
                  side: const BorderSide(
                    color: Colors.black, 
                    width: 2.0, 
                  ),
                ),
              ),
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment:
                    MainAxisAlignment.center,
                crossAxisAlignment:
                    CrossAxisAlignment.center, 
                children: [
                  Icon(Icons.directions_run,
                      size: 50, color: Colors.black), 
                  SizedBox(height: 10), 
                  Text(
                    "การออกกำลังกาย", 
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(height: 5), 
                  Text(
                    "กรอกข้อมูลการออกกำลังกายในแต่ละวัน", 
                    style: TextStyle(
                        fontSize: 12, color: Color.fromARGB(255, 0, 0, 0)),
                    textAlign: TextAlign.center, 
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 30.0,
            left: 20.0,
            right: 20.0,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TableCalendarScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                backgroundColor: Colors.white, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15), 
                  side: const BorderSide(
                    color: Colors.black, 
                    width: 2.0, 
                  ),
                ),
              ),
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment:
                    MainAxisAlignment.center, 
                crossAxisAlignment:
                    CrossAxisAlignment.center, 
                children: [
                  Icon(Icons.calendar_today,
                      size: 50, color: Colors.black), 
                  SizedBox(height: 10), 
                  Text(
                    "จัดตาราง", 
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "ช่วยจัดตารางแนะนำในแต่ละสัปดาห์", 
                    style: TextStyle(
                        fontSize: 12, color: Color.fromARGB(255, 0, 0, 0)),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 30.0,
            left: 20.0,
            right: 20.0,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(16.0),
                backgroundColor: Colors.white, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15), 
                  side: const BorderSide(
                    color: Colors.black, 
                    width: 2.0,
                  ),
                ),
              ),
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment:
                    MainAxisAlignment.center, 
                crossAxisAlignment:
                    CrossAxisAlignment.center, 
                children: [
                  Icon(Icons.bed,
                      size: 50, color: Colors.black), 
                  SizedBox(height: 10), 
                  Text(
                    "การพักผ่อน", 
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(height: 5), 
                  Text(
                    "กรอกช่วงเวลาการพักผ่อนในแต่ละวัน", 
                    style: TextStyle(
                        fontSize: 12, color: Color.fromARGB(255, 0, 0, 0)),
                    textAlign: TextAlign.center, 
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
  
