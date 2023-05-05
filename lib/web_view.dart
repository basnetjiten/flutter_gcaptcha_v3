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

  late bool _useGCaptchaV3;

  @override
  void initState() {
    super.initState();
    _verifyCaptchaCubit = VerifyCaptchaCubit();
    _useGCaptchaV3 = RecaptchaHandler.instance.useGCaptchaV3;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: WebViewPlus(
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (controller) {
          // if (_useGCaptchaV3) {
          //   controller.loadUrl('assets/recaptcha/index.html');
          //   Future.delayed(const Duration(seconds: 1)).then(
          //         (value) {
          //       controller.webViewController.runJavascript(
          //           'readyCaptcha("${RecaptchaHandler.instance.siteKey}")');
          //     },
          //   );
          // } else {
          controller.loadUrl('assets/webpages/index.html');
          Future.delayed(const Duration(seconds: 1)).then(
            (value) {
              controller.webViewController.runJavascript(
                  'updateV2DataSiteKey("${RecaptchaHandler.instance.siteKey}")');
            },
          );
          //    }
          widget.onControllerReady(controller);
        },
        javascriptChannels: _useGCaptchaV3
            ? {
                JavascriptChannel(
                  name: 'Ready',
                  onMessageReceived: (JavascriptMessage message) {},
                ),
                JavascriptChannel(
                  name: 'ReCaptcha',
                  onMessageReceived: (JavascriptMessage message) {
                    widget.onTokenReceived(message.message);
                  },
                ),
              }
            : {
                JavascriptChannel(
                  name: 'Captcha',
                  onMessageReceived: (JavascriptMessage message) {
                    widget.onTokenReceived(message.message);
                  },
                ),
              },
      ),
    );
  }
}
