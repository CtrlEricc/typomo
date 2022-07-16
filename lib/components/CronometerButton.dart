import 'package:flutter/material.dart';

class CronometerButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? click;

  const CronometerButton({
    Key? key,
    required this.text,
    required this.icon,
    this.click,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 5,
        ),
        textStyle: const TextStyle(
          fontSize: 20,
        ),
      ),
      onPressed: click,
      child: Row(
        children: [
          Icon(
            icon,
            size: 30,
          ),
          Text(text),
        ],
      ),
    );
  }
}
