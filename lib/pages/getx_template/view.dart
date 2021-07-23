import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class GetxTemplatePage extends StatelessWidget {
  final GetxTemplateLogic logic = Get.put(GetxTemplateLogic());
  final Rx<GetxTemplateState> state = Get.find<GetxTemplateLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('模板生成的目录格式'),),
      body: Column(
        children: [
          GetBuilder<GetxTemplateLogic>(
              builder: (_) {
                return Text('getBuilder value -> ${state.value.count}');
              }
          ),
          ElevatedButton(
            onPressed: () {
              // logic.increase();
              logic.increase();
            },
            child: Text('increase()'),
          ),
          Divider(),

          Obx(()=> Text('Obx value -> ${state.value.count}')),
          ElevatedButton(
            onPressed: () {
              // logic.increase();
              logic.increase2();
            },
            child: Text('increase2()'),
          ),
          Divider(),

          GetX<GetxTemplateLogic>(
            builder: (_) {
              return Text('GetX value -> ${state.value.count}');
            },
          ),
          ElevatedButton(
            onPressed: () {
              // logic.increase();
              logic.increase2();
            },
            child: Text('increase2()'),
          ),
          Divider(),
        ],
      ),
    );
  }
}
