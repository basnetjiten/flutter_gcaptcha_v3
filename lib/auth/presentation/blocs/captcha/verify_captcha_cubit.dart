import 'package:bloc/bloc.dart';
import 'package:flutter_gcaptcha_v3/auth/data/models/verified_captcha_model.dart';
import 'package:flutter_gcaptcha_v3/auth/data/repository/auth_repository_impl.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'verify_captcha_state.dart';

part 'verify_captcha_cubit.freezed.dart';

class VerifyCaptchaCubit extends Cubit<VerifyCaptchaState> {
  VerifyCaptchaCubit()
      : _authRepository = AuthRepositoryImpl(),
        super(const VerifyCaptchaState.ideal());

  late final AuthRepositoryImpl _authRepository;

  void verifyCaptchaToken(
      {required String token, required String secret}) async {
    emit(const VerifyCaptchaState.verifying());
    final result =
        await _authRepository.verifyCaptcha(secret: secret, token: token);
    emit(result.fold((error) => VerifyCaptchaState.failed(message: error),
        (data) => VerifyCaptchaState.success(verifiedCaptcha: data)));
  }
}
