import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ind_record_app/Views/IndRecord.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({super.key});
  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  @override
  @override
  Widget build(BuildContext context) {
    List<Widget> _pageList = [const IndRecord()];
    Color blue = const Color(0xFF01071B);
    int navigationIndex = 0;

    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: blue,
      body: _pageList[navigationIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF1D1F24),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.blue,
        iconSize: 16,
        selectedFontSize: 14,
        unselectedFontSize: 12,
        onTap: (int index) => {navigationIndex = index},
        currentIndex: navigationIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.record_voice_over_outlined),
            label: 'Records',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.voicemail,
            ),
            label: '',
            //.timeline_rounded),//.pending_actions_sharp),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insights_sharp),
            label: 'Insight',
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
