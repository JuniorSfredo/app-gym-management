// ignore_for_file: file_names

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:gym_management/pages/common/constants/ButtonConfig.dart';
import 'package:gym_management/pages/dashboard_page/navigation/DashboardNavigationItems.dart';

class DashboardNavigation extends StatelessWidget {

  final ButtonConfigs btnConfig = ButtonConfigs();

  DashboardNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: double.infinity,
      child: ListView.builder(       
        itemCount: btnConfig.dashboardNavigationItems.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final item = btnConfig.dashboardNavigationItems[index];
          return DashboardNavigationItems(
            itemText: Text(
              item.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            icon: FaIcon(
              item.icon,
              color: Colors.white,
              size: 25,
            ),
            onPressed: item.onPressed,
          );
        },
      ),
    );
  }
}
