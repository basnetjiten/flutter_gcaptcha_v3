import 'package:flutter/material.dart';
import 'package:flutter_gcaptcha_v3/auth/presentation/blocs/captcha/verify_captcha_cubit.dart';
import 'package:flutter_gcaptcha_v3/core/di/injector.dart';
import 'package:flutter_gcaptcha_v3/recaptca_config.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

/**
 * @Author: Jiten Basnet
 * @Company: EB Pearls
 */
class ReCaptchaWebView extends StatefulWidget {
  const ReCaptchaWebView({Key? key, required this.width, required this.height, required this.webViewPlusController})
      : super(key: key);
  final double width, height;
  final WebViewPlusController webViewPlusController;
  @override
  State<ReCaptchaWebView> createState() => _ReCaptchaWebViewState();
}

class _ReCaptchaWebViewState extends State<ReCaptchaWebView> {
  late final WebViewPlusController _controller;

  late final VerifyCaptchaCubit _verifyCaptchaCubit;
  late final RecaptchaHandler _recaptchaConfig;

  @override
  void initState() {
    super.initState();
    _controller= widget.webViewPlusController;
    _verifyCaptchaCubit = getIt<VerifyCaptchaCubit>();
    _recaptchaConfig = getIt<RecaptchaHandler>();
  }

  @override
  Widget build(BuildContext context) {
    return WebViewPlus(
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (controller) {
        _controller = controller;

        _controller.loadUrl('assets/webpages/index.html');

        Future.delayed(const Duration(seconds: 1)).then(
          (value) {
            _controller.webViewController.runJavascript(
                'loadRecaptchaScript(${_recaptchaConfig.keys.siteKey})');
          },
        );
      },
      javascriptChannels: {
        JavascriptChannel(
          name: 'Ready',
          onMessageReceived: (JavascriptMessage message) {},
        ),
        JavascriptChannel(
          name: 'Execute',
          onMessageReceived: (JavascriptMessage message) {
            _verifyCaptchaCubit.verifyCaptchaToken(
              token: message.message,
              secret: _recaptchaConfig.keys.secrete,
            );
          },
        ),
      },
    );
  }
}
