part of 'verify_captcha_cubit.dart';

@freezed
class VerifyCaptchaState with _$VerifyCaptchaState {
  const factory VerifyCaptchaState.success({required VerifiedCaptchaModel verifiedCaptcha}) = _Success;
  const factory VerifyCaptchaState.failed({required String message}) = _Failed;
  const factory VerifyCaptchaState.ideal() = _Ideal;
  const factory VerifyCaptchaState.verifying() = _Verifying;
}
