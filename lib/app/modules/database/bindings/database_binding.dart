import 'package:get/get.dart';

import '../controllers/database_controller.dart';

class DatabaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DatabaseController>(
      () => DatabaseController(),
    );
  }
}
