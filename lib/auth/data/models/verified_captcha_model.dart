/*
* @Author:Jiten Basnet on 04/05/2023
* @Company: GTEN SOFTWARE PVT.LTD
*/

import 'package:freezed_annotation/freezed_annotation.dart';

part 'verified_captcha_model.freezed.dart';

part 'verified_captcha_model.g.dart';

@freezed
class VerifiedCaptchaModel with _$VerifiedCaptchaModel {
  const factory VerifiedCaptchaModel({
    bool? success,
    String? challengeTs,
    String? hostname,
    double? score,
    String? action,
  }) = _VerifiedCaptchaModel;

  factory VerifiedCaptchaModel.fromJson(Map<String, dynamic> json) =>
      _$VerifiedCaptchaModelFromJson(json);
}
