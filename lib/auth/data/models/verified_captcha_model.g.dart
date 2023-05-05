// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verified_captcha_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VerifiedCaptchaModel _$$_VerifiedCaptchaModelFromJson(
        Map<String, dynamic> json) =>
    _$_VerifiedCaptchaModel(
      success: json['success'] as bool?,
      challengeTs: json['challengeTs'] as String?,
      hostname: json['hostname'] as String?,
      score: (json['score'] as num?)?.toDouble(),
      action: json['action'] as String?,
    );

Map<String, dynamic> _$$_VerifiedCaptchaModelToJson(
        _$_VerifiedCaptchaModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'challengeTs': instance.challengeTs,
      'hostname': instance.hostname,
      'score': instance.score,
      'action': instance.action,
    };
