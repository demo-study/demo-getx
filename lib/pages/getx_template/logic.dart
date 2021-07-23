import 'package:get/get.dart';

import 'state.dart';

class GetxTemplateLogic extends GetxController {
  var state = GetxTemplateState().obs;

  void increase() {
    state.value.count = state.value.count + 1;
    // GetBuilder更新
    update();
  }

  void increase2() {
    // 第一种方式更新响应式对象
    // state.value.count =  state.value.count + 1;
    // state.refresh();
    // 第二种方式更新响应式对象
    state.update((val) {
      val!.count ++;
    });
  }
}
