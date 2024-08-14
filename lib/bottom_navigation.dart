import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/account/account_screen.dart';
import 'package:flutter_task/constants/text_constants.dart';
import 'package:flutter_task/custom_widgets/text_widget.dart';

import 'package:flutter_task/home/home_screen.dart';

class DashbaordWidget extends StatefulWidget {
  @override
  _DashbaordWidgetState createState() => _DashbaordWidgetState();
}

class _DashbaordWidgetState extends State<DashbaordWidget> {
  int _currentIndex = 0;
  final bottomNavKey = GlobalKey();
  final List<Widget> _pages = [
    HomePage(),
    MyAccountPage(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        height: 60,
        key: bottomNavKey,
        color: Colors.amber,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                bottomNavItem(
                  title: TextConstants.home,
                  icon: Icons.home,
                  isSelected: _currentIndex == 0,
                  onTap: () {
                    if (_currentIndex != 0) {
                      setState(() {
                        _currentIndex = 0;
                      });
                    }
                  },
                ),
                bottomNavItem(
                  title: TextConstants.account,
                  icon: Icons.account_circle,
                  isSelected: _currentIndex == 1,
                  onTap: () {
                    if (_currentIndex != 1) {
                      setState(() {
                        _currentIndex = 1;
                      });
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomNavItem({
    required String title,
    required IconData icon,
    required bool isSelected,
    GestureTapCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          isSelected
              ? Icon(
                  icon,
                  color: Colors.white,
                )
              : Icon(icon),
          TextWidget(
            txtTitle: title,
            txtColor: isSelected ? Colors.white : Colors.black,
            txtFontWeight: FontWeight.w500,
            txtFontSize: 14,
            wrapValue: true,
          ),
        ],
      ),
    );
  }
}
