import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_gcaptcha_v3/recaptca_config.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class ReCaptchaWebView extends StatefulWidget {
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
  State<ReCaptchaWebView> createState() => _ReCaptchaWebViewState();
}

class _ReCaptchaWebViewState extends State<ReCaptchaWebView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: WebViewPlus(
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (controller) {
            controller.loadUrl("assets/web/index.html");
            Future.delayed(const Duration(seconds: 1)).then(
              (value) {
                controller.webViewController.runJavascript(
                    'readyCaptcha("${RecaptchaHandler.instance.siteKey}")');
              },
            );
            widget.onControllerReady(controller);
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
                widget.onTokenReceived(message.message);
              },
            ),
          }),
    );
  }
}
