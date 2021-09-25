import 'package:get/get.dart';

import 'home_controller.dart';

class HomeBinding implements Bindings {
  @override
  Future<void> dependencies() async {
    Get.put<HomeController>(
      HomeController(),
      permanent: false,
    );
  }
}
