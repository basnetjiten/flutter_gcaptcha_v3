/*
* @Author:Jiten Basnet on 05/05/2023
* @Company: GTEN SOFTWARE PVT.LTD.
*/

import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class RecaptchaHandler {
  RecaptchaHandler._();

  static RecaptchaHandler? _instance;
  late WebViewPlusController controller;
  late String siteKey;

  /// Returns an instance using the default [Env].
  static RecaptchaHandler get instance {
    _instance ??= RecaptchaHandler._();
    return _instance!;
  }

  updateController({required WebViewPlusController controller}){
    _instance?.controller=controller;
  }

  /// setup the data site key
  setupSiteKey({required String dataSiteKey}) {
    _instance?.siteKey = dataSiteKey;
  }

  /// Execute and call the  recaptcha API
  static executeV3() {
    _instance?.controller.webViewController
        .runJavascript('readyCaptcha("${_instance?.siteKey}")');
  }
}
