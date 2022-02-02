part of './services.dart';

class FlutterDashboardNavService extends GetxService {
  // Future<NavService> init() async {
  //   return this;
  // }
  final List<FlutterDashboardItem> navItems;

  FlutterDashboardNavService({
    required this.navItems,
  });

  static FlutterDashboardNavService get to =>
      Get.find<FlutterDashboardNavService>();

  final RxMap<String, FlutterDashboardItem> allRoutes =
      <String, FlutterDashboardItem>{}.obs;

  void _addRoutes(List<FlutterDashboardItem> _items) {
    for (var item in _items) {
      if (item.subItems.isEmpty) {
        allRoutes[item.title] = item;
      } else {
        _addRoutes(item.subItems);
      }
    }
  }

  final RxMap<String, bool> enabledRoutes = <String, bool>{}.obs;

  @override
  void onInit() {
    _addRoutes(navItems);
    super.onInit();
  }
}
