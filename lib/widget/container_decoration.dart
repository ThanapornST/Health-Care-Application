import 'package:flutter/material.dart';

class ContainerDecoration extends StatelessWidget {
  const ContainerDecoration({
    super.key,
    required this.text,
    this.child,
  });

  final String text;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15), // เพิ่ม padding เพื่อให้เนื้อหาไม่ชิดขอบกล่อง
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 237),
        border: Border.all(
          color: const Color.fromARGB(255, 77, 63, 44),
          width: 4,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                text,
                style: const TextStyle(
                  color: Color.fromARGB(255, 77, 63, 44),
                  fontSize: 18,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            if (child != null) child!,
          ],
        ),
      ),
    );
  }
}
