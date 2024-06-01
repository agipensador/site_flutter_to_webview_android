import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:site_flutter/core/presentation/views/home_page.dart';
import 'package:site_flutter/core/resources/strings.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeControllerPage extends GetxController {
  final List<ButtonData> buttonDataList = [
    ButtonData.news(),
    ButtonData.helpRS(),
    ButtonData.football(),
    ButtonData.github(),
  ];

  void handleNewsButtonClick(BuildContext context) {
    Get.find().sendToWebView("news");
  }

  Future<void> launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(enableJavaScript: true),
    )) {
      throw Exception('Could not launch $url');
    }
  }
}

class ButtonData {
  final String text;
  final String url;
  final Color color;

  ButtonData({required this.text, required this.color, required this.url});

  factory ButtonData.news() => ButtonData(text: 'Notícias', color: Colors.red, url: Strings.webNotices);

  factory ButtonData.helpRS() =>
      ButtonData(text: 'Ajude o RS', color: Colors.purple.shade700, url: Strings.webRS);

  factory ButtonData.football() =>
      ButtonData(text: 'Futebol', color: Colors.green, url:  Strings.webFootball);

  factory ButtonData.github() =>
      ButtonData(text: 'Github', color: Colors.black87, url:  Strings.webGit);

}
