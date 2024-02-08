import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ind_record_app/Components/BoxShadow.dart';
import 'package:ind_record_app/Views/BottomTabBar.dart';

class LogInView extends StatefulWidget {
  const LogInView({super.key});
  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  @override
  Widget build(BuildContext context) {
    Color blue = const Color(0xFF01071B);
    double buttonWidth = MediaQuery.of(context).size.width * 0.8;
    // double buttonHeight = 40;
    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomBoxShadow(
              // realWidth: buttonWidth,
              children: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomTabBar(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide.none,
                  ),
                  elevation: 10, // Add drop shadow
                  backgroundColor: blue, // Button background color
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons
                          .google, // Use the FontAwesomeIcons package for the Google icon
                      color: Colors.red,
                      size: 16.0, // Adjust the icon size as needed
                    ),
                    SizedBox(width: 8.0), // Add spacing between icon and text
                    Text(
                      'Google Sign in',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25),
            CustomBoxShadow(
              // realWidth: buttonWidth,
              children: ElevatedButton(
                onPressed: () {
                  return;
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide.none,
                  ),
                  elevation: 10, // Add drop shadow
                  backgroundColor: blue, // Button background color
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons
                          .apple, // Use the FontAwesomeIcons package for the Google icon
                      color: Colors.white,
                      size: 20.0, // Adjust the icon size as needed
                    ),
                    SizedBox(width: 8.0), // Add spacing between icon and text
                    Text(
                      'Apple Sign in',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ), // Add some spacing between buttons
          ],
        ),
      ),
    );
  }
}
