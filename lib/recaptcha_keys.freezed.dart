// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recaptcha_keys.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecaptchaKeys {
  String get siteKey => throw _privateConstructorUsedError;
  String get secrete => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String siteKey, String secrete) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String siteKey, String secrete)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String siteKey, String secrete)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecaptchaKeys value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecaptchaKeys value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecaptchaKeys value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecaptchaKeysCopyWith<RecaptchaKeys> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecaptchaKeysCopyWith<$Res> {
  factory $RecaptchaKeysCopyWith(
          RecaptchaKeys value, $Res Function(RecaptchaKeys) then) =
      _$RecaptchaKeysCopyWithImpl<$Res, RecaptchaKeys>;
  @useResult
  $Res call({String siteKey, String secrete});
}

/// @nodoc
class _$RecaptchaKeysCopyWithImpl<$Res, $Val extends RecaptchaKeys>
    implements $RecaptchaKeysCopyWith<$Res> {
  _$RecaptchaKeysCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? siteKey = null,
    Object? secrete = null,
  }) {
    return _then(_value.copyWith(
      siteKey: null == siteKey
          ? _value.siteKey
          : siteKey // ignore: cast_nullable_to_non_nullable
              as String,
      secrete: null == secrete
          ? _value.secrete
          : secrete // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecaptchaKeysCopyWith<$Res>
    implements $RecaptchaKeysCopyWith<$Res> {
  factory _$$_RecaptchaKeysCopyWith(
          _$_RecaptchaKeys value, $Res Function(_$_RecaptchaKeys) then) =
      __$$_RecaptchaKeysCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String siteKey, String secrete});
}

/// @nodoc
class __$$_RecaptchaKeysCopyWithImpl<$Res>
    extends _$RecaptchaKeysCopyWithImpl<$Res, _$_RecaptchaKeys>
    implements _$$_RecaptchaKeysCopyWith<$Res> {
  __$$_RecaptchaKeysCopyWithImpl(
      _$_RecaptchaKeys _value, $Res Function(_$_RecaptchaKeys) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? siteKey = null,
    Object? secrete = null,
  }) {
    return _then(_$_RecaptchaKeys(
      siteKey: null == siteKey
          ? _value.siteKey
          : siteKey // ignore: cast_nullable_to_non_nullable
              as String,
      secrete: null == secrete
          ? _value.secrete
          : secrete // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RecaptchaKeys implements _RecaptchaKeys {
  _$_RecaptchaKeys({required this.siteKey, required this.secrete});

  @override
  final String siteKey;
  @override
  final String secrete;

  @override
  String toString() {
    return 'RecaptchaKeys.ready(siteKey: $siteKey, secrete: $secrete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecaptchaKeys &&
            (identical(other.siteKey, siteKey) || other.siteKey == siteKey) &&
            (identical(other.secrete, secrete) || other.secrete == secrete));
  }

  @override
  int get hashCode => Object.hash(runtimeType, siteKey, secrete);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecaptchaKeysCopyWith<_$_RecaptchaKeys> get copyWith =>
      __$$_RecaptchaKeysCopyWithImpl<_$_RecaptchaKeys>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String siteKey, String secrete) ready,
  }) {
    return ready(siteKey, secrete);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String siteKey, String secrete)? ready,
  }) {
    return ready?.call(siteKey, secrete);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String siteKey, String secrete)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(siteKey, secrete);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecaptchaKeys value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecaptchaKeys value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecaptchaKeys value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _RecaptchaKeys implements RecaptchaKeys {
  factory _RecaptchaKeys(
      {required final String siteKey,
      required final String secrete}) = _$_RecaptchaKeys;

  @override
  String get siteKey;
  @override
  String get secrete;
  @override
  @JsonKey(ignore: true)
  _$$_RecaptchaKeysCopyWith<_$_RecaptchaKeys> get copyWith =>
      throw _privateConstructorUsedError;
}
