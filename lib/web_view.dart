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
      this.webViewColor = Colors.transparent,
      required this.onError})
      : super(key: key);

  final double width, height;
  final Function(String token) onTokenReceived;
  final Function(String error) onError;
  final Color? webViewColor;
  final String url;

  @override
  State<ReCaptchaWebView> createState() => _ReCaptchaWebViewState();
}

class _ReCaptchaWebViewState extends State<ReCaptchaWebView> {
  late WebViewController _controller;

  _setWebViewConfigs() {
    _controller = WebViewController()
      ..setBackgroundColor(widget.webViewColor ?? Colors.transparent)
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..addJavaScriptChannel(AppConstants.readyJsName,
          onMessageReceived: (JavaScriptMessage message) {})
      ..addJavaScriptChannel(AppConstants.captchaJsName,
          onMessageReceived: (JavaScriptMessage message) {
        print("errror==>>${message.message}");
        if (message.message.contains("error")) {
          widget.onError(AppConstants.errorMessage);
        } else {
          widget.onTokenReceived(message.message);
        }
      });

    _controller
        .loadRequest(Uri.parse(widget.url))
        .then((value) => _initializeReadyJs());
  }

  @override
  void initState() {
    super.initState();
    _setWebViewConfigs();
  }

  @override
  void didUpdateWidget(covariant ReCaptchaWebView oldWidget) {
    super.didUpdateWidget(oldWidget);
    _setWebViewConfigs();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: WebViewWidget(
        controller: _controller,
      ),
    );
  }

  void _initializeReadyJs() {
    RecaptchaHandler.instance.updateController(controller: _controller);
  }
}
