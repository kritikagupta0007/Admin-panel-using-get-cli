import 'package:flutter/material.dart';

import 'package:flutter_dashboard/flutter_dashboard.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../modules/analytics/bindings/analytics_binding.dart';
import '../modules/analytics/views/analytics_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/controllers/MenuController.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/views/main/main_screen.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.ANALYTICS,
      page: () => AnalyticsView(),
      binding: AnalyticsBinding(),
    ),
  ];

  static List<FlutterDashboardItem> allPages(BuildContext context) => [
        FlutterDashboardItem(
          title: 'Dashboard',
          page: GetPage(
            name: _Paths.DASHBOARD,
            page: () => DashboardView(),
            binding: DashboardBinding(),
          ),
          actions: [],
          icon: const Icon(
            Icons.home,
          ),
          // selectedIcon: Icon(
          //   IconlyBold.home,
          //   color: Theme.of(context).scaffoldBackgroundColor,
          // ),
        ),
        FlutterDashboardItem(
          title: 'Analytics Screen',
          page: GetPage(
            name: _Paths.ANALYTICS,
            page: () => AnalyticsView(),
            binding: AnalyticsBinding(),
          ),
          actions: [],
          icon: const Icon(Icons.analytics),
          // selectedIcon: Icon(
          //   IconlyBold.home,
          //   color: Theme.of(context).scaffoldBackgroundColor,
          // ),
        ),

        //   FlutterDashboardItem(
        //     title: 'Products',
        //     page: GetPage(
        //       name: _Paths.PRODUCTS,
        //       page: () => ProductsView(),
        //       binding: ProductsBinding(),
        //       middlewares: [
        //         EnsureAuthenticated(),
        //       ],
        //     ),
        //     icon: const Icon(
        //       IconlyLight.chart,
        //     ),
        //     selectedIcon: Icon(
        //       IconlyBold.chart,
        //       color: Theme.of(context).scaffoldBackgroundColor,
        //     ),
        //   ),
        //   FlutterDashboardItem(
        //     title: 'Help',
        //     page: GetPage(
        //       name: _Paths.HELP,
        //       page: () => const HelpView(),
        //       binding: HelpBinding(),
        //       middlewares: [
        //         EnsureAuthenticated(),
        //       ],
        //     ),
        //     icon: const Icon(
        //       Icons.help_outline_sharp,
        //     ),
        //     selectedIcon: Icon(
        //       Icons.help_outlined,
        //       color: Theme.of(context).scaffoldBackgroundColor,
        //     ),
        //   ),
        //   // FlutterDashboardItem(
        //   //   title: 'Payments',
        //   //   page: GetPage(
        //   //     name: _Paths.PAYMENTS,
        //   //     page: () => PaymentsView(),
        //   //     binding: PaymentsBinding(),
        //   //   ),
        //   //   icon: const Icon(
        //   //     IconlyLight.wallet,
        //   //   ),
        //   //   selectedIcon: Icon(
        //   //     IconlyBold.wallet,
        //   //     color: Theme.of(context).scaffoldBackgroundColor,
        //   //   ),
        //   // ),
      ];
}
