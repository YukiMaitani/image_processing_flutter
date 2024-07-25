// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rgb.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Rgb {
  double get red => throw _privateConstructorUsedError;
  double get green => throw _privateConstructorUsedError;
  double get blue => throw _privateConstructorUsedError;

  /// Create a copy of Rgb
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RgbCopyWith<Rgb> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RgbCopyWith<$Res> {
  factory $RgbCopyWith(Rgb value, $Res Function(Rgb) then) =
      _$RgbCopyWithImpl<$Res, Rgb>;
  @useResult
  $Res call({double red, double green, double blue});
}

/// @nodoc
class _$RgbCopyWithImpl<$Res, $Val extends Rgb> implements $RgbCopyWith<$Res> {
  _$RgbCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Rgb
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? red = null,
    Object? green = null,
    Object? blue = null,
  }) {
    return _then(_value.copyWith(
      red: null == red
          ? _value.red
          : red // ignore: cast_nullable_to_non_nullable
              as double,
      green: null == green
          ? _value.green
          : green // ignore: cast_nullable_to_non_nullable
              as double,
      blue: null == blue
          ? _value.blue
          : blue // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RgbImplCopyWith<$Res> implements $RgbCopyWith<$Res> {
  factory _$$RgbImplCopyWith(_$RgbImpl value, $Res Function(_$RgbImpl) then) =
      __$$RgbImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double red, double green, double blue});
}

/// @nodoc
class __$$RgbImplCopyWithImpl<$Res> extends _$RgbCopyWithImpl<$Res, _$RgbImpl>
    implements _$$RgbImplCopyWith<$Res> {
  __$$RgbImplCopyWithImpl(_$RgbImpl _value, $Res Function(_$RgbImpl) _then)
      : super(_value, _then);

  /// Create a copy of Rgb
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? red = null,
    Object? green = null,
    Object? blue = null,
  }) {
    return _then(_$RgbImpl(
      red: null == red
          ? _value.red
          : red // ignore: cast_nullable_to_non_nullable
              as double,
      green: null == green
          ? _value.green
          : green // ignore: cast_nullable_to_non_nullable
              as double,
      blue: null == blue
          ? _value.blue
          : blue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$RgbImpl implements _Rgb {
  const _$RgbImpl({required this.red, required this.green, required this.blue});

  @override
  final double red;
  @override
  final double green;
  @override
  final double blue;

  @override
  String toString() {
    return 'Rgb(red: $red, green: $green, blue: $blue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RgbImpl &&
            (identical(other.red, red) || other.red == red) &&
            (identical(other.green, green) || other.green == green) &&
            (identical(other.blue, blue) || other.blue == blue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, red, green, blue);

  /// Create a copy of Rgb
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RgbImplCopyWith<_$RgbImpl> get copyWith =>
      __$$RgbImplCopyWithImpl<_$RgbImpl>(this, _$identity);
}

abstract class _Rgb implements Rgb {
  const factory _Rgb(
      {required final double red,
      required final double green,
      required final double blue}) = _$RgbImpl;

  @override
  double get red;
  @override
  double get green;
  @override
  double get blue;

  /// Create a copy of Rgb
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RgbImplCopyWith<_$RgbImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
