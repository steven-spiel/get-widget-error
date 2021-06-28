import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Page1Controller extends GetxController {
  var index = 0.obs;
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: Text('Got to page 1'),
          onPressed: () => Get.to(() => Page1()),
        ),
      ),
    );
  }
}

class Page1 extends GetWidget<Page1Controller> {
  @override
  Widget build(BuildContext context) {
    Get.create(() => Page1Controller());

    return Scaffold(
      appBar: AppBar(title: Text('Page 1')),
      body: Obx(() => Center(child: Text(controller.index().toString()))),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => controller.index++,
      ),
    );
  }
}
