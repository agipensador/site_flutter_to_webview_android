import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:site_flutter/core/presentation/viewmodels/home_controller_page.dart';
import 'package:site_flutter/core/presentation/views/home_page.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();

  runApp(GetMaterialApp(
    initialBinding: BindingsBuilder(() {
      Get.put(HomeControllerPage());
    }),
    initialRoute: '/',
    getPages: [
      GetPage(name: '/', page: () => const HomePage()),
      // GetPage(name: '/webView', page: () => const WebViewPage()),
    ],
  ));
}
