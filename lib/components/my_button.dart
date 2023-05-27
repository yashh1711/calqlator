import 'package:flutter/material.dart';

class MyButtton extends StatelessWidget {
  final String data;
  final VoidCallback onPress;
  const MyButtton({super.key, this.data = '', required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPress,
        child: Container(
          height: 71,
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: (data == '/' ||
                      data == '*' ||
                      data == '-' ||
                      data == '+' ||
                      data == '=')
                  ? Colors.orange
                  : Colors.grey[700],
              shape: BoxShape.circle),
          child: Center(
            child: Text(
              data,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
