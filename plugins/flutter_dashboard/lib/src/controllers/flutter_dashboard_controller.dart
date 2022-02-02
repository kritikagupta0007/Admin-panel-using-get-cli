part of './controllers.dart';

class FlutterDashboardController extends GetxController
    with GetSingleTickerProviderStateMixin {
  static FlutterDashboardController get to =>
      Get.find<FlutterDashboardController>();

  final FlutterDashboardNavService _navService = FlutterDashboardNavService.to;

  GetDelegate? delegate;

  final RxString currentRoute = ''.obs, currentPageTitle = ''.obs;

  final RxBool isScreenLoading = false.obs, isDrawerOpen = false.obs;

  late AnimationController expansionController;
  late FocusNode focusNode;

  final GlobalKey<ScaffoldState> drawerKey = GlobalKey<ScaffoldState>();

  String dashboardInitialRoute =
      "${DashboardRoutes.DASHBOARD}${FlutterDashboardMaterialApp.of(Get.context!).dashboardItems[0].page!.name}";

  RxMap<String, FlutterDashboardItem> get finalRoutes => _navService.allRoutes;

  FlutterDashboardItem get selectedDrawerItem {
    return finalRoutes[currentPageTitle.value]!;
  }

  @override
  void onInit() {
    isScreenLoading(true);
    ever(_navService.enabledRoutes, (Map<String, bool> _enabledRoutes) {
      if (_enabledRoutes.isNotEmpty) {
        for (var _routeEntry in _enabledRoutes.entries) {
          if (!_routeEntry.value) {
            finalRoutes.removeWhere((key, value) => key == _routeEntry.key);
          }
        }
      }
    });

    focusNode = FocusNode();
    expansionController = AnimationController(
      vsync: this,
      duration: 250.milliseconds,
      value: 1.0,
    );

    ever(currentRoute, (String location) {
      if (location == '/' ||
          location == '/dashboard' ||
          location == '/dashboard/') {
        currentPageTitle(finalRoutes.keys.toList()[0]);
      } else {
        if (finalRoutes.values
            .map((FlutterDashboardItem e) => (location)
                .startsWith('${DashboardRoutes.DASHBOARD}${e.page!.name}'))
            .isNotEmpty) {
          currentPageTitle(finalRoutes.values
              .singleWhere((FlutterDashboardItem e) => (location)
                  .startsWith('${DashboardRoutes.DASHBOARD}${e.page!.name}'))
              .title);
        }
        Get.log('Current dashboard route : ${currentPageTitle.value}');
      }
    });
    super.onInit();
  }

  @override
  void onReady() {
    isScreenLoading(false);
    super.onReady();
  }

  @override
  void onClose() {
    focusNode.dispose();
    expansionController.dispose();
    super.onClose();
  }
}
