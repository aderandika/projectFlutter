import 'package:flutter/material.dart';
import '../config/app_constants.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppConstants.navMenuDashboard[0]['view'] as Widget,
      extendBody: true,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(70, 0, 70, 20),
        child: Material(
          borderRadius: BorderRadius.circular(10),
          child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            iconSize: 30,
            type: BottomNavigationBarType.fixed,
            onTap: (value) {},
            showSelectedLabels: false,
            showUnselectedLabels: false,
            unselectedItemColor: Colors.grey[400],
            items: AppConstants.navMenuDashboard.map((e) {
              return BottomNavigationBarItem(
                icon: Icon(e['icon']),
                label: e['label'],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
