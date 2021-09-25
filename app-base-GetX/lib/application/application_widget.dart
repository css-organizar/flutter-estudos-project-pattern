import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'application_bindings.dart';
import 'application_pages.dart';

class ApplicationWidget extends StatefulWidget {
  const ApplicationWidget({Key? key}) : super(key: key);
  @override
  _ApplicationWidgetState createState() => _ApplicationWidgetState();
}

class _ApplicationWidgetState extends State<ApplicationWidget> {
  final routeObserver = Get.put<RouteObserver>(RouteObserver<PageRoute>());

  @override
  Widget build(BuildContext context) {
    final routeObserver = Get.put<RouteObserver>(RouteObserver<PageRoute>());
    return GetMaterialApp(
      title: 'Estrutura Báse de App com GetX',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.light,
      ),
      navigatorKey: Get.key,
      navigatorObservers: [
        routeObserver,
      ],
      getPages: ApplicationPages.routes,
      initialRoute: ApplicationPages.initialRoute,
      enableLog: true,
      opaqueRoute: Get.isOpaqueRouteDefault,
      popGesture: Get.isPopGestureEnable,
      defaultTransition: Transition.fadeIn,
      initialBinding: ApplicationBinding(),
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('pt', 'BR'),
      ],
    );
  }
}
