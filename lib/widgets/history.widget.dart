import 'package:flutter/material.dart';

class History extends StatelessWidget {
  final String text;
  final Widget content;

  const History({
    required this.text,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 90,
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              // color: Colors.red,
              border: Border.all(
                color: Colors.black26,
              ),
            ),
            child: content,
          ),
          SizedBox(
            height: 5,
          ),
          Flexible(
            child: Text(
              text,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
