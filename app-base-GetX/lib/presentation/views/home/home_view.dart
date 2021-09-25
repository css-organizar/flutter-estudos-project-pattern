import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../application/application_pages.dart';
import 'home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with RouteAware {
  HomeController controller = Get.find<HomeController>();

  @override
  void initState() {
    super.initState();
    debugPrint('HomeView - initState');
  }

  @override
  void activate() {
    super.activate();
    debugPrint('HomeView - activate');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    debugPrint('HomeView - didChangeDependencies');

    Get.find<RouteObserver>().subscribe(
      this,
      ModalRoute.of(context) as PageRoute,
    );
  }

  @override
  void reassemble() {
    super.reassemble();
    debugPrint('HomeView - reassemble');
  }

  @override
  void didPush() {
    debugPrint('HomeView - didPush');
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('HomeView - build');
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed(ApplicationRoutes.configurationView);
              },
              child: Text('Teste'),
            )
          ],
        ),
      ),
    );
  }

  @override
  void didPushNext() {
    debugPrint('HomeView - didPushNext');
  }

  @override
  void didPopNext() {
    debugPrint('HomeView - didPopNext');
  }

  @override
  void didPop() {
    debugPrint('HomeView - didPop');
  }

  @override
  void deactivate() {
    super.deactivate();
    debugPrint('HomeView - deactivate');
  }

  @override
  void dispose() {
    Get.find<RouteObserver>().unsubscribe(this);
    super.dispose();
    debugPrint('HomeView - dispose');
  }
}
