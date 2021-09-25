import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'configuration_controller.dart';

class ConfigurationView extends StatefulWidget {
  const ConfigurationView({Key? key}) : super(key: key);
  @override
  _ConfigurationViewState createState() => _ConfigurationViewState();
}

class _ConfigurationViewState extends State<ConfigurationView> with RouteAware {
  ConfigurationController controller = Get.find<ConfigurationController>();

  @override
  void initState() {
    super.initState();
    debugPrint('ConfigurationView - initState');
  }

  @override
  void dispose() {
    Get.find<RouteObserver>().unsubscribe(this);
    super.dispose();
    debugPrint('ConfigurationView - dispose');
  }

  @override
  void reassemble() {
    super.reassemble();
    debugPrint('ConfigurationView - reassemble');
  }

  @override
  void deactivate() {
    super.deactivate();
    debugPrint('ConfigurationView - deactivate');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('ConfigurationView - didChangeDependencies');
    Get.find<RouteObserver>().subscribe(this, ModalRoute.of(context) as PageRoute);
  }

  @override
  void didPopNext() {
    debugPrint('ConfigurationView - didPopNext');
  }

  @override
  void didPush() {
    debugPrint('ConfigurationView - didPush');
  }

  @override
  void didPop() {
    debugPrint('ConfigurationView - didPop');
  }

  @override
  void didPushNext() {
    debugPrint('ConfigurationView - didPushNext');
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('ConfigurationView - build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuration'),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
