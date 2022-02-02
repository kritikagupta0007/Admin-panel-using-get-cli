import 'package:get/get.dart';

import '../controllers/approvals_controller.dart';

class ApprovalsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApprovalsController>(
      () => ApprovalsController(),
    );
  }
}
