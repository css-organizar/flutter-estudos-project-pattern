import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    debugPrint('HomeController - onInit');
  }

  @override
  void onClose() {
    debugPrint('HomeController - onClose');
    super.onClose();
  }
}
