/*
* @Author:Jiten Basnet on 05/05/2023
* @Company: EB Pearls
*/

import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class RecaptchaHandler {
  RecaptchaHandler._();

  static RecaptchaHandler? _instance;

  late String siteKey;
  bool useGCaptchaV3 = false;
  String? secreteKey;

  bool get hasSecreteKey => secreteKey != null;

  /// Returns an instance using the default [Env].
  static RecaptchaHandler get instance {
    _instance ??= RecaptchaHandler._();
    return _instance!;
  }

  setupSiteKey(
      {required String dataSiteKey,
      String? secreteKey,
      bool useGCaptchaV3 = true}) {
    _instance?.siteKey = dataSiteKey;
    _instance?.secreteKey = secreteKey;
    _instance?.useGCaptchaV3 = useGCaptchaV3;
  }

  // static configureCaptchaVersion(WebViewPlusController controller) {
  //   if (_instance!.useGCaptchaV3) {
  //     controller.loadUrl('assets/three_webpage/index2.html');
  //     Future.delayed(const Duration(seconds: 1)).then(
  //       (value) {
  //         controller.webViewController.runJavascript(
  //             'readyCaptcha("${RecaptchaHandler.instance.siteKey}")');
  //       },
  //     );
  //   } else {
  //     controller.loadUrl('assets/two_webpage/index2.html');
  //     Future.delayed(const Duration(seconds: 1)).then(
  //       (value) {
  //         controller.webViewController.runJavascript(
  //             'updateV2DataSiteKey("${RecaptchaHandler.instance.siteKey}")');
  //       },
  //     );
  //   }
  // }

  static executeV3({required WebViewPlusController controller}) {
    controller.webViewController
        .runJavascript('readyCaptcha("${_instance?.siteKey}")');
  }
}
