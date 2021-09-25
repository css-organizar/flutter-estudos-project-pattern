import 'package:get/get.dart';
import 'configuration_controller.dart';

class ConfigurationBinding implements Bindings {
  @override
  Future<void> dependencies() async {
    Get.put<ConfigurationController>(
      ConfigurationController(),
      permanent: false,
    );
  }
}
