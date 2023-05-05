import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_gcaptcha_v3/auth/presentation/blocs/captcha/verify_captcha_cubit.dart';
import 'package:flutter_gcaptcha_v3/recaptca_config.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

/**
 * @Author: Jiten Basnet
 * @Company: EB Pearls
 */
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
  late final VerifyCaptchaCubit _verifyCaptchaCubit;

  @override
  void initState() {
    super.initState();

    _verifyCaptchaCubit = VerifyCaptchaCubit();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: WebViewPlus(
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (controller) {
          controller.loadUrl('assets/webpages/index.html');
          widget.onControllerReady(controller);

          Future.delayed(const Duration(seconds: 1)).then(
            (value) {
              log("DATA SITE KEY${RecaptchaHandler.instance.siteKey}");
              controller.webViewController.runJavascript(
                  'readyCaptcha("${RecaptchaHandler.instance.siteKey}")');
            },
          );
        },
        javascriptChannels:  Set.from([
          JavascriptChannel(
            name: 'Ready',
            onMessageReceived: (JavascriptMessage message) {
              log("READY SITE KEY${message.message}");
            },
          ),
          JavascriptChannel(
            name: 'Execute',
            onMessageReceived: (JavascriptMessage message) {
              // if (RecaptchaHandler.instance.hasSecreteKey) {
              //   _verifyCaptchaCubit.verifyCaptchaToken(
              //     token: message.message,
              //     secret: RecaptchaHandler.instance.secreteKey!,
              //   );
              // } else {
              widget.onTokenReceived(message.message);
              //}
            },
          ),]),
      ),
    );
  }
}
