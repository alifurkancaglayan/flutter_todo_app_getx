import 'package:flutter/material.dart';
import 'package:flutter_todo_app_getx/ui/theme.dart';

class MyButton extends StatelessWidget {
  final String? label;
  final Function() onTap;
  const MyButton({super.key, this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 120,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: primaryClr,
        ),
        child: Center(
          child: Text(
            label!,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
