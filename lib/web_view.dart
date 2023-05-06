import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_gcaptcha_v3/recaptca_config.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class ReCaptchaWebView extends StatelessWidget {
  const ReCaptchaWebView(
      {Key? key,
      required this.width,
      required this.height,
      required this.onControllerReady,
      required this.onTokenReceived})
      : super(key: key);

  final double width, height;
  final Function(WebViewPlusController controller) onControllerReady;
  final Function(String token) onTokenReceived;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: WebViewPlus(
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (controller) {
            log('http://localhost:58685/assets/webpages/index.html');
            controller.loadUrl("assets/newpages/index.html");
            Future.delayed(const Duration(seconds: 1)).then(
              (value) {
                controller.webViewController.runJavascript(
                    'readyCaptcha("${RecaptchaHandler.instance.siteKey}")');
              },
            );
            onControllerReady(controller);
          },
          javascriptChannels: {
            JavascriptChannel(
              name: 'Ready',
              onMessageReceived: (JavascriptMessage message) {},
            ),
            JavascriptChannel(
              name: 'Captcha',
              onMessageReceived: (JavascriptMessage message) {
                log('TOKEN==> ${message.message}');
                onTokenReceived(message.message);
              },
            ),
          }),
    );
  }
}
