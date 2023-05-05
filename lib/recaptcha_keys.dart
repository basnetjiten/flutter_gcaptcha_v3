import 'package:freezed_annotation/freezed_annotation.dart';

part 'recaptcha_keys.freezed.dart';

@freezed
class RecaptchaKeys with _$RecaptchaKeys {
  factory RecaptchaKeys.ready(
      {required String siteKey, required String secrete}) = _RecaptchaKeys;
}
