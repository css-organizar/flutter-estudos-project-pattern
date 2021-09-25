import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'application/application_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Get.put<RouteObserver>(
    RouteObserver<PageRoute>(),
    permanent: true,
  );

  runApp(
    ApplicationWidget(),
  );
}
