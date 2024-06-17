/*
* @Author:Jiten Basnet on 05/05/2023
* @Company: GTEN SOFTWARE PVT.LTD.
*/

import 'package:flutter_gcaptcha_v3/constants.dart';
import 'package:webview_flutter/webview_flutter.dart';

class RecaptchaHandler {
  RecaptchaHandler._();

  static RecaptchaHandler? _instance;
  late WebViewController controller;
  late String _siteKey;


  String? _captchaToken;

  String get siteKey => _siteKey;

  String? get captchaToken => _captchaToken;

  /// Returns an instance using the default [Env].
  static RecaptchaHandler get instance => _instance ??= RecaptchaHandler._();

  /// updates the Web view controller
  updateController({required WebViewController controller}) {
    _instance?.controller = controller;

    controller.runJavaScript(
        '${AppConstants.readyCaptcha}("${_instance?._siteKey}", "submit")');
  }

  void updateToken({required String generatedToken}){
    _captchaToken=generatedToken;
  }

  /// setups the data site key
  setupSiteKey({required String dataSiteKey}) =>
      _instance?._siteKey = dataSiteKey;

  /// Executes and call the  recaptcha API
  static executeV3({String? action}) {
    final String userAction = action ?? 'submit';
    _instance?.controller.runJavaScript(
        '${AppConstants.executeCaptcha}("${_instance?._siteKey}", "$userAction")');
  }
}
