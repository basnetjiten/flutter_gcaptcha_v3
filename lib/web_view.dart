import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_gcaptcha_v3/constants.dart';
import 'package:flutter_gcaptcha_v3/recaptca_config.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class ReCaptchaWebView extends StatelessWidget {
  const ReCaptchaWebView(
      {Key? key,
      required this.width,
      required this.height,
      required this.onTokenReceived})
      : super(key: key);

  final double width, height;
  final Function(String token) onTokenReceived;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: WebViewPlus(
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (controller) {
          RecaptchaHandler.instance.updateController(controller: controller);
          controller.loadUrl(AppConstants.webPage);
          Future.delayed(const Duration(seconds: 3)).then(
            (value) => controller.webViewController.runJavascript(
                '${AppConstants.readyCaptcha}("${RecaptchaHandler.instance.siteKey}")'),
          );
        },
        javascriptChannels: {
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
        },
      ),
    );
  }
}
