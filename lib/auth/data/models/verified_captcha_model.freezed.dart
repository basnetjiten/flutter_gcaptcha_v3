// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verified_captcha_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VerifiedCaptchaModel _$VerifiedCaptchaModelFromJson(Map<String, dynamic> json) {
  return _VerifiedCaptchaModel.fromJson(json);
}

/// @nodoc
mixin _$VerifiedCaptchaModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get challengeTs => throw _privateConstructorUsedError;
  String? get hostname => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifiedCaptchaModelCopyWith<VerifiedCaptchaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifiedCaptchaModelCopyWith<$Res> {
  factory $VerifiedCaptchaModelCopyWith(VerifiedCaptchaModel value,
          $Res Function(VerifiedCaptchaModel) then) =
      _$VerifiedCaptchaModelCopyWithImpl<$Res, VerifiedCaptchaModel>;
  @useResult
  $Res call(
      {bool? success,
      String? challengeTs,
      String? hostname,
      double? score,
      String? action});
}

/// @nodoc
class _$VerifiedCaptchaModelCopyWithImpl<$Res,
        $Val extends VerifiedCaptchaModel>
    implements $VerifiedCaptchaModelCopyWith<$Res> {
  _$VerifiedCaptchaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? challengeTs = freezed,
    Object? hostname = freezed,
    Object? score = freezed,
    Object? action = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      challengeTs: freezed == challengeTs
          ? _value.challengeTs
          : challengeTs // ignore: cast_nullable_to_non_nullable
              as String?,
      hostname: freezed == hostname
          ? _value.hostname
          : hostname // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VerifiedCaptchaModelCopyWith<$Res>
    implements $VerifiedCaptchaModelCopyWith<$Res> {
  factory _$$_VerifiedCaptchaModelCopyWith(_$_VerifiedCaptchaModel value,
          $Res Function(_$_VerifiedCaptchaModel) then) =
      __$$_VerifiedCaptchaModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success,
      String? challengeTs,
      String? hostname,
      double? score,
      String? action});
}

/// @nodoc
class __$$_VerifiedCaptchaModelCopyWithImpl<$Res>
    extends _$VerifiedCaptchaModelCopyWithImpl<$Res, _$_VerifiedCaptchaModel>
    implements _$$_VerifiedCaptchaModelCopyWith<$Res> {
  __$$_VerifiedCaptchaModelCopyWithImpl(_$_VerifiedCaptchaModel _value,
      $Res Function(_$_VerifiedCaptchaModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? challengeTs = freezed,
    Object? hostname = freezed,
    Object? score = freezed,
    Object? action = freezed,
  }) {
    return _then(_$_VerifiedCaptchaModel(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      challengeTs: freezed == challengeTs
          ? _value.challengeTs
          : challengeTs // ignore: cast_nullable_to_non_nullable
              as String?,
      hostname: freezed == hostname
          ? _value.hostname
          : hostname // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VerifiedCaptchaModel implements _VerifiedCaptchaModel {
  const _$_VerifiedCaptchaModel(
      {this.success, this.challengeTs, this.hostname, this.score, this.action});

  factory _$_VerifiedCaptchaModel.fromJson(Map<String, dynamic> json) =>
      _$$_VerifiedCaptchaModelFromJson(json);

  @override
  final bool? success;
  @override
  final String? challengeTs;
  @override
  final String? hostname;
  @override
  final double? score;
  @override
  final String? action;

  @override
  String toString() {
    return 'VerifiedCaptchaModel(success: $success, challengeTs: $challengeTs, hostname: $hostname, score: $score, action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifiedCaptchaModel &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.challengeTs, challengeTs) ||
                other.challengeTs == challengeTs) &&
            (identical(other.hostname, hostname) ||
                other.hostname == hostname) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.action, action) || other.action == action));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, success, challengeTs, hostname, score, action);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifiedCaptchaModelCopyWith<_$_VerifiedCaptchaModel> get copyWith =>
      __$$_VerifiedCaptchaModelCopyWithImpl<_$_VerifiedCaptchaModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerifiedCaptchaModelToJson(
      this,
    );
  }
}

abstract class _VerifiedCaptchaModel implements VerifiedCaptchaModel {
  const factory _VerifiedCaptchaModel(
      {final bool? success,
      final String? challengeTs,
      final String? hostname,
      final double? score,
      final String? action}) = _$_VerifiedCaptchaModel;

  factory _VerifiedCaptchaModel.fromJson(Map<String, dynamic> json) =
      _$_VerifiedCaptchaModel.fromJson;

  @override
  bool? get success;
  @override
  String? get challengeTs;
  @override
  String? get hostname;
  @override
  double? get score;
  @override
  String? get action;
  @override
  @JsonKey(ignore: true)
  _$$_VerifiedCaptchaModelCopyWith<_$_VerifiedCaptchaModel> get copyWith =>
      throw _privateConstructorUsedError;
}
