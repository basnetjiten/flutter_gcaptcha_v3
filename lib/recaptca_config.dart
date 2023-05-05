/*
* @Author:Jiten Basnet on 05/05/2023
* @Company: EB Pearls
*/

import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class RecaptchaHandler {
  RecaptchaHandler._();

  static RecaptchaHandler? _instance;

  late String siteKey;
  String? secreteKey;


  bool get hasSecreteKey => secreteKey!=null;

  /// Returns an instance using the default [Env].
  static RecaptchaHandler get instance {
    _instance ??= RecaptchaHandler._();
    return _instance!;
  }

  setupSiteKey({required String dataSiteKey, String? secreteKey}) {
    _instance?.siteKey = dataSiteKey;
    _instance?.secreteKey = secreteKey;
  }

  static execute({required WebViewPlusController controller}) {
    controller.webViewController
        .runJavascript('readyCaptcha("${_instance?.siteKey}")');
  }
}
