import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfigurationController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    debugPrint('ConfigurationController - onInit');
  }

  @override
  void onClose() {
    debugPrint('ConfigurationController - onClose');
    super.onClose();
  }
}
