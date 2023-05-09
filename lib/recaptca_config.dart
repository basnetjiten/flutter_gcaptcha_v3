/*
* @Author:Jiten Basnet on 05/05/2023
* @Company: GTEN SOFTWARE PVT.LTD.
*/

import 'package:flutter_gcaptcha_v3/constants.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class RecaptchaHandler {
  RecaptchaHandler._();

  static RecaptchaHandler? _instance;
  late WebViewPlusController controller;
  late String _siteKey;

  String get siteKey => _siteKey;

  /// Returns an instance using the default [Env].
  static RecaptchaHandler get instance => _instance ??= RecaptchaHandler._();

  /// updates the Web view controller
  updateController({required WebViewPlusController controller}) => _instance?.controller = controller;

  /// setups the data site key
  setupSiteKey({required String dataSiteKey}) => _instance?._siteKey = dataSiteKey;

  /// Executes and call the  recaptcha API
  static executeV3() => _instance?.controller.webViewController.runJavascript('${AppConstants.readyCaptcha}("${_instance?._siteKey}")');
}
