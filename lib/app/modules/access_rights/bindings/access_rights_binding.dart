import 'package:get/get.dart';

import '../controllers/access_rights_controller.dart';

class AccessRightsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccessRightsController>(
      () => AccessRightsController(),
    );
  }
}
