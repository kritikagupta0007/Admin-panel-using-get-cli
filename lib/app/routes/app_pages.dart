import 'package:flutter/material.dart';

import 'package:flutter_dashboard/flutter_dashboard.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../modules/access_rights/bindings/access_rights_binding.dart';
import '../modules/access_rights/views/access_rights_view.dart';
import '../modules/ai/bindings/ai_binding.dart';
import '../modules/ai/views/ai_view.dart';
import '../modules/analytics/bindings/analytics_binding.dart';
import '../modules/analytics/views/analytics_view.dart';
import '../modules/approvals/bindings/approvals_binding.dart';
import '../modules/approvals/views/approvals_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/database/bindings/database_binding.dart';
import '../modules/database/views/database_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/controllers/MenuController.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/views/main/main_screen.dart';
import '../modules/notification/bindings/notification_binding.dart';
import '../modules/notification/views/notification_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/recommendations/bindings/recommendations_binding.dart';
import '../modules/recommendations/views/recommendations_view.dart';
import '../modules/reports/bindings/reports_binding.dart';
import '../modules/reports/views/reports_view.dart';
import '../modules/sales_marketing/bindings/sales_marketing_binding.dart';
import '../modules/sales_marketing/views/sales_marketing_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/settings_view.dart';

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
    GetPage(
      name: _Paths.DATABASE,
      page: () => DatabaseView(),
      binding: DatabaseBinding(),
    ),
    GetPage(
      name: _Paths.REPORTS,
      page: () => ReportsView(),
      binding: ReportsBinding(),
    ),
    GetPage(
      name: _Paths.APPROVALS,
      page: () => ApprovalsView(),
      binding: ApprovalsBinding(),
    ),
    GetPage(
      name: _Paths.ACCESS_RIGHTS,
      page: () => AccessRightsView(),
      binding: AccessRightsBinding(),
    ),
    GetPage(
      name: _Paths.RECOMMENDATIONS,
      page: () => RecommendationsView(),
      binding: RecommendationsBinding(),
    ),
    GetPage(
      name: _Paths.SALES_MARKETING,
      page: () => SalesMarketingView(),
      binding: SalesMarketingBinding(),
    ),
    GetPage(
      name: _Paths.AI,
      page: () => AiView(),
      binding: AiBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => SettingsView(),
      binding: SettingsBinding(),
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
          title: 'Analytics',
          page: GetPage(
            name: _Paths.ANALYTICS,
            page: () => AnalyticsView(),
            binding: AnalyticsBinding(),
          ),
          actions: [],
          icon: const Icon(Icons.analytics),
          selectedIcon: Icon(
            Icons.analytics,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
        FlutterDashboardItem(
          title: 'Database',
          page: GetPage(
            name: _Paths.DATABASE,
            page: () => DatabaseView(),
            binding: DatabaseBinding(),
          ),
          actions: [],
          icon: Icon(Icons.data_usage_rounded),
          selectedIcon: Icon(
            Icons.data_usage_rounded,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
        FlutterDashboardItem(
          title: 'Reports',
          page: GetPage(
            name: _Paths.REPORTS,
            page: () => ReportsView(),
            binding: ReportsBinding(),
          ),
          actions: [],
          icon: const Icon(Icons.report),
          selectedIcon: Icon(
            Icons.report,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
        FlutterDashboardItem(
          title: 'Approvals',
          page: GetPage(
            name: _Paths.APPROVALS,
            page: () => ApprovalsView(),
            binding: ApprovalsBinding(),
          ),
          actions: [],
          icon: const Icon(Icons.analytics),
          selectedIcon: Icon(
            Icons.analytics,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
        FlutterDashboardItem(
          title: 'Access Rights',
          page: GetPage(
            name: _Paths.ACCESS_RIGHTS,
            page: () => AccessRightsView(),
            binding: AccessRightsBinding(),
          ),
          actions: [],
          icon: const Icon(Icons.analytics),
          selectedIcon: Icon(
            Icons.analytics,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
        FlutterDashboardItem(
          title: 'Recommendations',
          page: GetPage(
            name: _Paths.RECOMMENDATIONS,
            page: () => RecommendationsView(),
            binding: RecommendationsBinding(),
          ),
          actions: [],
          icon: const Icon(Icons.analytics),
          selectedIcon: Icon(
            Icons.analytics,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
        FlutterDashboardItem(
          title: 'Sales / Marketing',
          page: GetPage(
            name: _Paths.SALES_MARKETING,
            page: () => SalesMarketingView(),
            binding: SalesMarketingBinding(),
          ),
          actions: [],
          icon: const Icon(Icons.analytics),
          selectedIcon: Icon(
            Icons.analytics,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
        FlutterDashboardItem(
          title: 'AI',
          page: GetPage(
            name: _Paths.AI,
            page: () => AiView(),
            binding: AiBinding(),
          ),
          actions: [],
          icon: const Icon(Icons.analytics),
          selectedIcon: Icon(
            Icons.analytics,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
        FlutterDashboardItem(
          title: 'Notification',
          page: GetPage(
            name: _Paths.NOTIFICATION,
            page: () => NotificationView(),
            binding: NotificationBinding(),
          ),
          actions: [],
          icon: const Icon(Icons.analytics),
          selectedIcon: Icon(
            Icons.analytics,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
        FlutterDashboardItem(
          title: 'Profile',
          page: GetPage(
            name: _Paths.PROFILE,
            page: () => ProfileView(),
            binding: ProfileBinding(),
          ),
          actions: [],
          icon: const Icon(Icons.analytics),
          selectedIcon: Icon(
            Icons.analytics,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
        FlutterDashboardItem(
          title: 'Settings',
          page: GetPage(
            name: _Paths.SETTINGS,
            page: () => SettingsView(),
            binding: SettingsBinding(),
          ),
          actions: [],
          icon: const Icon(Icons.analytics),
          selectedIcon: Icon(
            Icons.analytics,
            color: Theme.of(context).scaffoldBackgroundColor,
          ),
        ),
      ];
}
