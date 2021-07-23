import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';
import 'state.dart';

class GetxTemplatePage extends StatelessWidget {
  final GetxTemplateLogic logic = Get.put(GetxTemplateLogic());
  final GetxTemplateState state = Get.find<GetxTemplateLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

      ],
    );
  }
}
