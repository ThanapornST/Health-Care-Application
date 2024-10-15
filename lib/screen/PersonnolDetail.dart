import 'package:flutter/material.dart';
import 'package:healthcares/widget/button_manu.dart';
import 'package:healthcares/widget/container_decoration.dart';

class PersonnolDetails extends StatefulWidget {
  const PersonnolDetails({super.key});

  @override
  State<PersonnolDetails> createState() => _PersonnolDetailsState();
}

class _PersonnolDetailsState extends State<PersonnolDetails> {
  DateTime? selectedDate;
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  String? selectedGender;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Please fill out the information completely."),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: const Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _continue() {
    String? height = heightController.text;
    String? weight = weightController.text;

    if (selectedGender == null) {
      _showErrorDialog("Please select your birthday.");
    } else if (selectedDate == null) {
      _showErrorDialog("Please enter your height.");
    } else if (height.isEmpty) {
      _showErrorDialog("Please enter your weight.");
    } else if (weight.isEmpty) {
      _showErrorDialog("Please select a gender.");
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const CalculateFoodCalories(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 77, 63, 44), 
                    Color.fromARGB(255, 167, 157, 144), 
                    Color.fromARGB(0, 255, 255,
                        255), 
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              height: 300,
              child: const Center(
                child: Text(
                  "Personnol Details",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 46, 40, 32)),
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            ContainerDecoration(
              text: 'Birthday',
              child: GestureDetector(
                onTap: () => _selectDate(context),
                child: Row(
                  children: [
                    const Icon(
                      Icons.calendar_today,
                      size: 24,
                      color: Color.fromARGB(255, 77, 63, 44),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      selectedDate != null
                          ? '${selectedDate?.toLocal()}'.split(' ')[0]
                          : 'Select your birthday',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 77, 63, 44),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ContainerDecoration(
              text: 'Height',
              child: SizedBox(
                width: 200,
                child: TextField(
                  controller: heightController,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.right,
                  decoration:
                      const InputDecoration(hintText: 'Enter your height (cm)'),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ContainerDecoration(
              text: 'Weight',
              child: SizedBox(
                width: 200,
                child: TextField(
                  controller: weightController,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.right, 
                  decoration: const InputDecoration(
                    hintText: 'Enter your weight (kg)',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ContainerDecoration(
              text: 'Gender',
              child: DropdownButton<String>(
                value: selectedGender,
                hint: const Text(
                  'Select gender',
                  style: TextStyle(fontSize: 14),
                ),
                items: <String>['Male', 'Female', 'Other']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(
                    () {
                      selectedGender = newValue;
                    },
                  );
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 77, 63, 44), 
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), 
                  topRight: Radius.circular(20), 
                ),
              ),
              height: 156,
              padding: const EdgeInsets.all(50),
              child: ElevatedButton(
                onPressed: _continue,
                child:  Text("Continue"),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 60),
                  backgroundColor: const Color.fromARGB(255, 252, 250, 223),
                  foregroundColor: const Color.fromARGB(255, 77, 63, 44),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                        color: Color.fromARGB(255, 255, 255, 255), width: 4),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/*DateTime? selectedDate;
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  String? selectedGender;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  } */