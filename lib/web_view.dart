import 'package:flutter/material.dart';
import 'package:flutter_gcaptcha_v3/constants.dart';
import 'package:flutter_gcaptcha_v3/recaptca_config.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ReCaptchaWebView extends StatelessWidget {
  const ReCaptchaWebView(
      {Key? key,
      required this.url,
      required this.width,
      required this.height,
      required this.onTokenReceived,
      this.webViewColor = Colors.transparent})
      : super(key: key);

  final double width, height;
  final Function(String token) onTokenReceived;
  final Color? webViewColor;
  final String url;
  static late WebViewController _controller;

  _setWebViewConfigs() {
    _controller = WebViewController()
      ..setBackgroundColor(webViewColor ?? Colors.transparent)
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..addJavaScriptChannel(AppConstants.readyJsName,
          onMessageReceived: (JavaScriptMessage message) {})
      ..addJavaScriptChannel(AppConstants.captchaJsName,
          onMessageReceived: (JavaScriptMessage message) {
        onTokenReceived(message.message);
      });

    _controller.loadRequest(Uri.parse(url)).then((value) =>
        Future.delayed(const Duration(seconds: 2))
            .then((value) => _initializeReadyJs(_controller)));
  }

  @override
  Widget build(BuildContext context) {
    _setWebViewConfigs();

    return SizedBox(
      height: height,
      width: width,
      child: WebViewWidget(
        controller: _controller,
      ),
    );
  }

  void _initializeReadyJs(WebViewController controller) {
    RecaptchaHandler.instance.updateController(controller: controller);
  }
}
