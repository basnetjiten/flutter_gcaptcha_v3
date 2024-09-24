import 'package:flutter/material.dart';
import 'package:flutter_gcaptcha_v3/constants.dart';
import 'package:flutter_gcaptcha_v3/recaptca_config.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ReCaptchaWebView extends StatefulWidget {
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

  @override
  State<ReCaptchaWebView> createState() => _ReCaptchaWebViewState();
}

class _ReCaptchaWebViewState extends State<ReCaptchaWebView> {
  late WebViewController _webController;

  @override
  void initState() {
    super.initState();
    _webController = WebViewController();
    _setWebViewConfigs();
  }

  _setWebViewConfigs() {
    _webController
      ..setBackgroundColor(widget.webViewColor ?? Colors.transparent)
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..addJavaScriptChannel(AppConstants.readyJsName,
          onMessageReceived: (JavaScriptMessage message) {})
      ..addJavaScriptChannel(AppConstants.captchaJsName,
          onMessageReceived: (JavaScriptMessage message) {
        widget.onTokenReceived(message.message);
        RecaptchaHandler.instance.updateToken(generatedToken: message.message);
      });

    _webController.loadRequest(Uri.parse(widget.url)).then(
        (value) => Future.delayed(const Duration(seconds: 3)).then((value) {
              _initializeReadyJs(_webController);
            }));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: WebViewWidget(
        controller: _webController,
      ),
    );
  }

  void _initializeReadyJs(WebViewController controller) {
    RecaptchaHandler.instance.updateController(controller: controller);
  }
}
