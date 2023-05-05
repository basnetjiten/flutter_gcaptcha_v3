// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_captcha_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VerifyCaptchaState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VerifiedCaptchaModel verifiedCaptcha) success,
    required TResult Function(String message) failed,
    required TResult Function() ideal,
    required TResult Function() verifying,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VerifiedCaptchaModel verifiedCaptcha)? success,
    TResult? Function(String message)? failed,
    TResult? Function()? ideal,
    TResult? Function()? verifying,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VerifiedCaptchaModel verifiedCaptcha)? success,
    TResult Function(String message)? failed,
    TResult Function()? ideal,
    TResult Function()? verifying,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Ideal value) ideal,
    required TResult Function(_Verifying value) verifying,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Ideal value)? ideal,
    TResult? Function(_Verifying value)? verifying,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    TResult Function(_Ideal value)? ideal,
    TResult Function(_Verifying value)? verifying,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyCaptchaStateCopyWith<$Res> {
  factory $VerifyCaptchaStateCopyWith(
          VerifyCaptchaState value, $Res Function(VerifyCaptchaState) then) =
      _$VerifyCaptchaStateCopyWithImpl<$Res, VerifyCaptchaState>;
}

/// @nodoc
class _$VerifyCaptchaStateCopyWithImpl<$Res, $Val extends VerifyCaptchaState>
    implements $VerifyCaptchaStateCopyWith<$Res> {
  _$VerifyCaptchaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({VerifiedCaptchaModel verifiedCaptcha});

  $VerifiedCaptchaModelCopyWith<$Res> get verifiedCaptcha;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$VerifyCaptchaStateCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verifiedCaptcha = null,
  }) {
    return _then(_$_Success(
      verifiedCaptcha: null == verifiedCaptcha
          ? _value.verifiedCaptcha
          : verifiedCaptcha // ignore: cast_nullable_to_non_nullable
              as VerifiedCaptchaModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $VerifiedCaptchaModelCopyWith<$Res> get verifiedCaptcha {
    return $VerifiedCaptchaModelCopyWith<$Res>(_value.verifiedCaptcha, (value) {
      return _then(_value.copyWith(verifiedCaptcha: value));
    });
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({required this.verifiedCaptcha});

  @override
  final VerifiedCaptchaModel verifiedCaptcha;

  @override
  String toString() {
    return 'VerifyCaptchaState.success(verifiedCaptcha: $verifiedCaptcha)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            (identical(other.verifiedCaptcha, verifiedCaptcha) ||
                other.verifiedCaptcha == verifiedCaptcha));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verifiedCaptcha);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VerifiedCaptchaModel verifiedCaptcha) success,
    required TResult Function(String message) failed,
    required TResult Function() ideal,
    required TResult Function() verifying,
  }) {
    return success(verifiedCaptcha);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VerifiedCaptchaModel verifiedCaptcha)? success,
    TResult? Function(String message)? failed,
    TResult? Function()? ideal,
    TResult? Function()? verifying,
  }) {
    return success?.call(verifiedCaptcha);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VerifiedCaptchaModel verifiedCaptcha)? success,
    TResult Function(String message)? failed,
    TResult Function()? ideal,
    TResult Function()? verifying,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(verifiedCaptcha);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Ideal value) ideal,
    required TResult Function(_Verifying value) verifying,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Ideal value)? ideal,
    TResult? Function(_Verifying value)? verifying,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    TResult Function(_Ideal value)? ideal,
    TResult Function(_Verifying value)? verifying,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements VerifyCaptchaState {
  const factory _Success(
      {required final VerifiedCaptchaModel verifiedCaptcha}) = _$_Success;

  VerifiedCaptchaModel get verifiedCaptcha;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailedCopyWith<$Res> {
  factory _$$_FailedCopyWith(_$_Failed value, $Res Function(_$_Failed) then) =
      __$$_FailedCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_FailedCopyWithImpl<$Res>
    extends _$VerifyCaptchaStateCopyWithImpl<$Res, _$_Failed>
    implements _$$_FailedCopyWith<$Res> {
  __$$_FailedCopyWithImpl(_$_Failed _value, $Res Function(_$_Failed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_Failed(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'VerifyCaptchaState.failed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failed &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailedCopyWith<_$_Failed> get copyWith =>
      __$$_FailedCopyWithImpl<_$_Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VerifiedCaptchaModel verifiedCaptcha) success,
    required TResult Function(String message) failed,
    required TResult Function() ideal,
    required TResult Function() verifying,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VerifiedCaptchaModel verifiedCaptcha)? success,
    TResult? Function(String message)? failed,
    TResult? Function()? ideal,
    TResult? Function()? verifying,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VerifiedCaptchaModel verifiedCaptcha)? success,
    TResult Function(String message)? failed,
    TResult Function()? ideal,
    TResult Function()? verifying,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Ideal value) ideal,
    required TResult Function(_Verifying value) verifying,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Ideal value)? ideal,
    TResult? Function(_Verifying value)? verifying,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    TResult Function(_Ideal value)? ideal,
    TResult Function(_Verifying value)? verifying,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements VerifyCaptchaState {
  const factory _Failed({required final String message}) = _$_Failed;

  String get message;
  @JsonKey(ignore: true)
  _$$_FailedCopyWith<_$_Failed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IdealCopyWith<$Res> {
  factory _$$_IdealCopyWith(_$_Ideal value, $Res Function(_$_Ideal) then) =
      __$$_IdealCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IdealCopyWithImpl<$Res>
    extends _$VerifyCaptchaStateCopyWithImpl<$Res, _$_Ideal>
    implements _$$_IdealCopyWith<$Res> {
  __$$_IdealCopyWithImpl(_$_Ideal _value, $Res Function(_$_Ideal) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Ideal implements _Ideal {
  const _$_Ideal();

  @override
  String toString() {
    return 'VerifyCaptchaState.ideal()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Ideal);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VerifiedCaptchaModel verifiedCaptcha) success,
    required TResult Function(String message) failed,
    required TResult Function() ideal,
    required TResult Function() verifying,
  }) {
    return ideal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VerifiedCaptchaModel verifiedCaptcha)? success,
    TResult? Function(String message)? failed,
    TResult? Function()? ideal,
    TResult? Function()? verifying,
  }) {
    return ideal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VerifiedCaptchaModel verifiedCaptcha)? success,
    TResult Function(String message)? failed,
    TResult Function()? ideal,
    TResult Function()? verifying,
    required TResult orElse(),
  }) {
    if (ideal != null) {
      return ideal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Ideal value) ideal,
    required TResult Function(_Verifying value) verifying,
  }) {
    return ideal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Ideal value)? ideal,
    TResult? Function(_Verifying value)? verifying,
  }) {
    return ideal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    TResult Function(_Ideal value)? ideal,
    TResult Function(_Verifying value)? verifying,
    required TResult orElse(),
  }) {
    if (ideal != null) {
      return ideal(this);
    }
    return orElse();
  }
}

abstract class _Ideal implements VerifyCaptchaState {
  const factory _Ideal() = _$_Ideal;
}

/// @nodoc
abstract class _$$_VerifyingCopyWith<$Res> {
  factory _$$_VerifyingCopyWith(
          _$_Verifying value, $Res Function(_$_Verifying) then) =
      __$$_VerifyingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VerifyingCopyWithImpl<$Res>
    extends _$VerifyCaptchaStateCopyWithImpl<$Res, _$_Verifying>
    implements _$$_VerifyingCopyWith<$Res> {
  __$$_VerifyingCopyWithImpl(
      _$_Verifying _value, $Res Function(_$_Verifying) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Verifying implements _Verifying {
  const _$_Verifying();

  @override
  String toString() {
    return 'VerifyCaptchaState.verifying()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Verifying);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(VerifiedCaptchaModel verifiedCaptcha) success,
    required TResult Function(String message) failed,
    required TResult Function() ideal,
    required TResult Function() verifying,
  }) {
    return verifying();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(VerifiedCaptchaModel verifiedCaptcha)? success,
    TResult? Function(String message)? failed,
    TResult? Function()? ideal,
    TResult? Function()? verifying,
  }) {
    return verifying?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(VerifiedCaptchaModel verifiedCaptcha)? success,
    TResult Function(String message)? failed,
    TResult Function()? ideal,
    TResult Function()? verifying,
    required TResult orElse(),
  }) {
    if (verifying != null) {
      return verifying();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Ideal value) ideal,
    required TResult Function(_Verifying value) verifying,
  }) {
    return verifying(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success value)? success,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_Ideal value)? ideal,
    TResult? Function(_Verifying value)? verifying,
  }) {
    return verifying?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_Failed value)? failed,
    TResult Function(_Ideal value)? ideal,
    TResult Function(_Verifying value)? verifying,
    required TResult orElse(),
  }) {
    if (verifying != null) {
      return verifying(this);
    }
    return orElse();
  }
}

abstract class _Verifying implements VerifyCaptchaState {
  const factory _Verifying() = _$_Verifying;
}
