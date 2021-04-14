import 'package:flutter/material.dart';

class ButtonTab extends StatelessWidget {
  final bool isSelected;
  final String text;
  final Color color;

  const ButtonTab({
    required this.isSelected,
    required this.text,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: isSelected
          ? BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 2,
                  color: color,
                ),
              ),
            )
          : null,
      child: TextButton(
        child: Text(
          text,
          style: isSelected
              ? TextStyle(
                  color: color,
                )
              : null,
        ),
        style: TextButton.styleFrom(
          primary: Colors.black,
        ),
        onPressed: () {},
      ),
    );
  }
}
