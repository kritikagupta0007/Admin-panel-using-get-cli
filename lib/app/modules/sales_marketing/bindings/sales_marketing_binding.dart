import 'package:get/get.dart';

import '../controllers/sales_marketing_controller.dart';

class SalesMarketingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SalesMarketingController>(
      () => SalesMarketingController(),
    );
  }
}
