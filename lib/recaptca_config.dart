/*
* @Author:Jiten Basnet on 05/05/2023
* @Company: EB Pearls
*/

import 'dart:developer';

import 'package:flutter_gcaptcha_v3/auth/presentation/blocs/captcha/verify_captcha_cubit.dart';
import 'package:flutter_gcaptcha_v3/recaptcha_keys.dart';
import 'package:injectable/injectable.dart';
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
    log("Excute==>> ${_instance?.siteKey}");
    controller.webViewController.runJavascript(
        'loadRecaptchaScript("${_instance?.siteKey}")');
  }
}
