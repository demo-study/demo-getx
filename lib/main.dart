import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_quick_start/common/lang/translation_service.dart';
import 'package:getx_quick_start/common/routes/app_pages.dart';
import 'package:getx_quick_start/common/services/global_config.dart';

import 'common/utils/logger.dart';

Future<void> main() async {
  await initServices();
  runApp(MyApp());
}

Future<void> initServices() async {
  print('starting services ...');
  await Get.putAsync(() => GlobalConfigService().init());
  // await Get.putAsync(SettingsService()).init();
  print('All services started...');
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // 关闭debugger标志
      debugShowCheckedModeBanner: false,
      // 日志
      enableLog: true,
      logWriterCallback: Logger.write,
      // 初始路由
      initialRoute: AppPages.INITIAL,
      // 路由
      getPages: AppPages.routes,
      // 找不到路由
      unknownRoute: AppPages.unknownRoute,
      // locale: TranslationService.locale,
      // fallbackLocale: TranslationService.fallbackLocale,
      // translations: TranslationService(),
      // 多语言
      // 初始
      locale: TranslationService.locale,
      // 找不到的话
      fallbackLocale: TranslationService.fallbackLocale,
      // 字典
      translations: TranslationService(),
    );
  }
}
