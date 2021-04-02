import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get.dart';
import './controller.dart';
import 'next_getview_page.dart';

// ignore: must_be_immutable
class StateDependencyLazyPutView extends StatelessWidget {
  StateDependencyLazyPutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dependency - LazyPut"),
      ),
      body: Center(
        child: Column(
          children: [
            GetX<CountController>(
              init: Get.find<CountController>(),
              initState: (_) {},
              builder: (_) {
                return Text('value -> ${_.count}');
              },
            ),
            Divider(),

            // 按钮
            ElevatedButton(
              onPressed: () {
                Get.find<CountController>().add();
              },
              child: Text('add'),
            ),

            // 跳转
            ElevatedButton(
              onPressed: () {
                Get.to(NextPageView());
              },
              child: Text('Next GetView Page'),
            ),
          ],
        ),
      ),
    );
  }
}
