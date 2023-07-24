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
  bool _useCustomAction = false;

  String get siteKey => _siteKey;

  /// Returns an instance using the default [Env].
  static RecaptchaHandler get instance => _instance ??= RecaptchaHandler._();

  /// updates the Web view controller
  updateController({required WebViewController controller}) {
    _instance?.controller = controller;

    if (_instance?._useCustomAction ?? false) {
      controller.runJavaScript(
          '${AppConstants.readyCaptcha}("${_instance?._siteKey}", "submit")');
    } else {
      controller.runJavaScript(
          '${AppConstants.readyCaptcha}("${_instance?._siteKey}"');
    }
  }

  /// setups the data site key
  void setupSiteKey(
      {required String dataSiteKey, bool useCustomAction = false}) {
    _instance?._siteKey = dataSiteKey;
    _instance?._useCustomAction = useCustomAction;
  }

  /// Executes and call the  recaptcha API
  /// Use [_useCustomAction] to execute javascript with custom action name
  /// eg. login, submit, register etc
  /// [_useCustomAction] is [false] by default and [submit] action name is used
  static executeV3({String action = 'submit'}) {
    if (_instance?._useCustomAction ?? false) {
      _instance?.controller.runJavaScript(
          '${AppConstants.readyCaptcha}("${_instance?._siteKey}", "$action")');
    } else {
      _instance?.controller.runJavaScript(
          '${AppConstants.readyCaptcha}("${_instance?._siteKey}")');
    }
  }
}
