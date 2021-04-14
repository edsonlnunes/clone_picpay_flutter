import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool isCurrent;

  const BottomMenu({
    required this.icon,
    required this.text,
    required this.isCurrent,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Icon(
              icon,
              color: isCurrent ? Colors.green[600] : Colors.black,
            ),
            Text(
              text,
              style: TextStyle(
                color: isCurrent ? Colors.green[600] : Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
