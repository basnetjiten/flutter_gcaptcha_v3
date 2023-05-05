/*
* @Author:Jiten Basnet on 05/05/2023
* @Company: EB Pearls
*/

import 'package:flutter_gcaptcha_v3/auth/presentation/blocs/captcha/verify_captcha_cubit.dart';
import 'package:flutter_gcaptcha_v3/recaptcha_keys.dart';
import 'package:injectable/injectable.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';
import 'core/di/injector.dart';

@injectable
@singleton
class RecaptchaHandler{
  final RecaptchaKeys keys;

  RecaptchaHandler({required this.keys});

  save() {
    getIt.registerSingleton(RecaptchaHandler(keys: keys));
  }

  static execute({required WebViewPlusController controller}) {
    final recaptchaV3 = getIt<RecaptchaHandler>();
    controller.webViewController
        .runJavascript('loadRecaptchaScript(${recaptchaV3.keys.siteKey})');
  }
}
