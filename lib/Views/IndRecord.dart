import 'package:flutter/material.dart';

class IndRecord extends StatefulWidget {
  const IndRecord({super.key});
  @override
  State<IndRecord> createState() => _IndRecordState();
}

class _IndRecordState extends State<IndRecord> {
  @override
  Widget build(BuildContext context) {
    Color blue = const Color(0xFF01071B);
    double buttonWidth = MediaQuery.of(context).size.width * 0.4;
    Color shadow = const Color.fromARGB(255, 77, 145, 197);
    // double buttonHeight = 40;
    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: blue,
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 24, top: 0, right: 24, bottom: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                    weight: 12,
                    size: 18,
                  ),
                  Text(
                    "Hi, Michael 👋",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
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
                child: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  opticalSize: 10,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
