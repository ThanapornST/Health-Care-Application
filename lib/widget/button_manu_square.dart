import 'package:flutter/material.dart';

class ButtonManuSquare extends StatelessWidget {
  const ButtonManuSquare({
    super.key, required this.text, 
  //required this.onbutton
  });

  final String text;
  //final void Function() onbutton;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 50,
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 237),
        foregroundColor: const Color.fromARGB(255, 77, 63, 44),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(
            color:  Color.fromARGB(255, 77, 63, 44), 
            width: 2, 
          ),
        ),
      ),
      child: Text(text),
    );
  }
}
