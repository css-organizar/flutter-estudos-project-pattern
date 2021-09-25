import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widget_factory/application/application_pages.dart';
import 'package:widget_factory/presentation/views/home/home_controller.dart';

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
  void dispose() {
    Get.find<RouteObserver>().unsubscribe(this);
    super.dispose();
    debugPrint('HomeView - dispose');
  }

  @override
  void reassemble() {
    super.reassemble();
    debugPrint('HomeView - reassemble');
  }

  @override
  void deactivate() {
    super.deactivate();
    debugPrint('HomeView - deactivate');
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
  void didPopNext() {
    debugPrint('HomeView - didPopNext');
  }

  @override
  void didPush() {
    debugPrint('HomeView - didPush');
  }

  @override
  void didPop() {
    debugPrint('HomeView - didPop');
  }

  @override
  void didPushNext() {
    debugPrint('HomeView - didPushNext');
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
}
