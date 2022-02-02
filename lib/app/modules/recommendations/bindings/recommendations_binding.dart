import 'package:get/get.dart';

import '../controllers/recommendations_controller.dart';

class RecommendationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RecommendationsController>(
      () => RecommendationsController(),
    );
  }
}
