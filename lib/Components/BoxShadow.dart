import 'package:flutter/material.dart';

class CustomBoxShadow extends StatelessWidget {
  const CustomBoxShadow({super.key, required this.children});

  final Widget children;
  // final double realHeight;
  @override
  Widget build(BuildContext context) {
    Color blue = const Color(0xFF01071B);
    Color shadow = const Color.fromARGB(255, 77, 145, 197);
    double buttonWidth = MediaQuery.of(context).size.width * 0.8;
    return Container(
      width: buttonWidth,
      height: 40,
      decoration: BoxDecoration(
        color: blue,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: shadow,
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: children,
    );
  }
}
