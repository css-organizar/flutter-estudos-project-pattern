import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
  }

  @override
  void dispose() {
    Get.find<RouteObserver>().unsubscribe(this);
    super.dispose();
  }

  @override
  void reassemble() {
    super.reassemble();
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void didPopNext() {
    debugPrint('didPopNext $runtimeType');
  }

  @override
  void didPush() {
    debugPrint('didPopNext $runtimeType');
  }

  @override
  void didPop() {
    debugPrint('didPopNext $runtimeType');
  }

  @override
  void didPushNext() {
    debugPrint('didPopNext $runtimeType');
  }

  @override
  Widget build(BuildContext context) {
    Get.find<RouteObserver>().subscribe(this, ModalRoute.of(context) as PageRoute);
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
        centerTitle: true,
      ),
      body: Container(),
    );
  }
}
