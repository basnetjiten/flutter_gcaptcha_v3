/*
* @Author:Jiten Basnet on 05/05/2023
* @Company: EB Pearls
*/

import 'package:flutter_gcaptcha_v3/recaptcha_keys.dart';
import 'package:injectable/injectable.dart';
import 'core/di/injector.dart';

@injectable
@singleton
class RecaptchaConfig {
  final RecaptchaKeys keys;

  RecaptchaConfig({required this.keys});

  execute() {
    getIt.registerSingleton(RecaptchaConfig(keys: keys));
  }
}
