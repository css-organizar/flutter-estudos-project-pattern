import 'package:get/get.dart';

import '../presentation/views/configuration/configuration_binding.dart';
import '../presentation/views/configuration/configuration_view.dart';
import '../presentation/views/home/home_binding.dart';
import '../presentation/views/home/home_view.dart';

part 'application_routes.dart';

class ApplicationPages {
  static const initialRoute = ApplicationRoutes.homeView;

  static final routes = [
    GetPage(
      name: ApplicationRoutes.homeView,
      page: () {
        return HomeView();
      },
      bindings: [
        HomeBinding(),
      ],
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: ApplicationRoutes.configurationView,
      page: () {
        return ConfigurationView();
      },
      bindings: [
        ConfigurationBinding(),
      ],
      transition: Transition.fadeIn,
    ),
  ];
}
