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
      required this.onTokenReceived,
      required this.webViewColor})
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
        onWebViewCreated: (controller) => _loadUrlAndUpdateController,
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

  void _loadUrlAndUpdateController(WebViewPlusController controller) {
    RecaptchaHandler.instance.updateController(controller: controller);
    controller.loadUrl(AppConstants.webPage);
    _initializeReadyJs(controller);
  }

  void _initializeReadyJs(WebViewPlusController controller) {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => controller.webViewController.runJavascript('${AppConstants.readyCaptcha}("${RecaptchaHandler.instance.siteKey}")'),
    );
  }
}
