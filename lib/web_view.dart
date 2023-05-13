import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gcaptcha_v3/constants.dart';
import 'package:flutter_gcaptcha_v3/recaptca_config.dart';
import 'package:path_provider/path_provider.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class ReCaptchaWebView extends StatelessWidget {
  const ReCaptchaWebView(
      {Key? key,
      required this.width,
      required this.height,
      required this.onTokenReceived,
      this.webViewColor = Colors.transparent})
      : super(key: key);

  final double width, height;
  final Function(String token) onTokenReceived;
  final Color? webViewColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: WebViewPlus(
        backgroundColor: webViewColor,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (controller) {
          RecaptchaHandler.instance.updateController(controller: controller);

          //createLocalUrl(controller);
          controller.loadUrl(AppConstants.webPage);

          Future.delayed(const Duration(seconds: 1))
              .then((value) => _initializeReadyJs(controller));
        },
        javascriptChannels: _initializeJavascriptChannels(),
      ),
    );
  }

  Set<JavascriptChannel> _initializeJavascriptChannels() {
    return {
      JavascriptChannel(
        name: AppConstants.readyJsName,
        onMessageReceived: (JavascriptMessage message) {},
      ),
      JavascriptChannel(
        name: AppConstants.captchaJsName,
        onMessageReceived: (JavascriptMessage message) {
          log('TOKEN==> ${message.message}');
          onTokenReceived(message.message);
        },
      ),
    };
  }

  void _initializeReadyJs(WebViewPlusController controller) {
    (value) => controller.webViewController.runJavascript(
        '${AppConstants.readyCaptcha}("${RecaptchaHandler.instance.siteKey}")');

    RecaptchaHandler.executeV3();
  }

}
