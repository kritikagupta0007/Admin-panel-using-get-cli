import 'package:sample_get_cli/app/modules/home/controllers/MenuController.dart';
import 'package:sample_get_cli/app/modules/home/views/approvals/approvals_main.dart';
import 'package:sample_get_cli/app/modules/home/views/dashboard/dashboard_screen.dart';
import 'package:sample_get_cli/app/modules/home/views/database/database_screen.dart';
import 'package:sample_get_cli/app/modules/home/views/notification/notification_screen.dart';
import 'package:sample_get_cli/app/modules/home/views/recommendations/recommendations_screen.dart';
import 'package:sample_get_cli/app/modules/home/views/reports/reports_screen.dart';
import 'package:sample_get_cli/app/modules/home/views/sales_market/sales_market_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:sample_get_cli/app/modules/home/views/recommendations/recommendations_screen.dart';
import 'package:sample_get_cli/responsive.dart';

import '../analytics/analytics_main.dart';
import 'components/side_menu.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int title = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: sideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: sideMenu(),
              ),
            if (title == 1)
              Expanded(
                // It takes 5/6 part of the screen
                flex: 5,
                child: DashboardScreen(),
              ),
            if (title == 2)
              const Expanded(
                // It takes 5/6 part of the screen
                flex: 5,
                child: AnalyticsMainScreen(),
              ),
            if (title == 3)
              const Expanded(
                // It takes 5/6 part of the screen
                flex: 5,
                child: DatabaseMainScreen(),
              ),
            if (title == 4)
              const Expanded(
                // It takes 5/6 part of the screen
                flex: 5,
                child: ReportMainScreen(),
              ),
            if (title == 5)
              const Expanded(
                // It takes 5/6 part of the screen
                flex: 5,
                child: ApprovalsMainScreen(),
              ),
            if (title == 7)
              const Expanded(
                // It takes 5/6 part of the screen
                flex: 5,
                child: RecommendationScreen(),
              ),
            if (title == 8)
              const Expanded(
                // It takes 5/6 part of the screen
                flex: 5,
                child: SalesMarketScreen(),
              ),
            if (title == 10)
              const Expanded(
                // It takes 5/6 part of the screen
                flex: 5,
                child: NotificationScreen(),
              ),
          ],
        ),
      ),
    );
  }

  Widget sideMenu() {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("assets/images/logo.png"),
          ),
          DrawerListTile(
            title: "Dashboard",
            svgSrc: "assets/icons/menu_dashbord.svg",
            press: () {
              setState(() {
                title = 1;
              });
            },
          ),
          DrawerListTile(
            title: "Analytics",
            svgSrc: "assets/icons/menu_tran.svg",
            press: () {
              setState(() {
                title = 2;
              });
            },
          ),
          DrawerListTile(
            title: "Database",
            svgSrc: "assets/icons/menu_task.svg",
            press: () {
              setState(() {
                title = 3;
              });
            },
          ),
          DrawerListTile(
            title: "Reports",
            svgSrc: "assets/icons/menu_doc.svg",
            press: () {
              setState(() {
                title = 4;
              });
            },
          ),
          DrawerListTile(
            title: "Approvals",
            svgSrc: "assets/icons/menu_store.svg",
            press: () {
              setState(() {
                title = 5;
              });
            },
          ),
          DrawerListTile(
            title: "Access Rights",
            svgSrc: "assets/icons/menu_store.svg",
            press: () {
              setState(() {
                title = 6;
              });
            },
          ),
          DrawerListTile(
            title: "Recommendations",
            svgSrc: "assets/icons/menu_store.svg",
            press: () {
              setState(() {
                title = 7;
              });
            },
          ),
          DrawerListTile(
            title: "Sales / Marketing",
            svgSrc: "assets/icons/menu_store.svg",
            press: () {
              setState(() {
                title = 8;
              });
            },
          ),
          DrawerListTile(
            title: "AI",
            svgSrc: "assets/icons/menu_store.svg",
            press: () {
              setState(() {
                title = 9;
              });
            },
          ),
          DrawerListTile(
            title: "Notification",
            svgSrc: "assets/icons/menu_notification.svg",
            press: () {
              setState(() {
                title = 10;
              });
            },
          ),
          DrawerListTile(
            title: "Profile",
            svgSrc: "assets/icons/menu_profile.svg",
            press: () {
              setState(() {
                title = 11;
              });
            },
          ),
          DrawerListTile(
            title: "Settings",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {
              setState(() {
                title = 12;
              });
            },
          ),
        ],
      ),
    );
  }
}
