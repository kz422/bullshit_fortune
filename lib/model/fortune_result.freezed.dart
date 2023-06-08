// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fortune_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FortuneResultModel {
  String get generalFortune => throw _privateConstructorUsedError;
  String get loveFortune => throw _privateConstructorUsedError;
  String get jobFortune => throw _privateConstructorUsedError;
  String get moneyFortune => throw _privateConstructorUsedError;
  String get healthFortune => throw _privateConstructorUsedError;
  Map<String, dynamic> get color => throw _privateConstructorUsedError;
  bool get isGenerated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FortuneResultModelCopyWith<FortuneResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FortuneResultModelCopyWith<$Res> {
  factory $FortuneResultModelCopyWith(
          FortuneResultModel value, $Res Function(FortuneResultModel) then) =
      _$FortuneResultModelCopyWithImpl<$Res, FortuneResultModel>;
  @useResult
  $Res call(
      {String generalFortune,
      String loveFortune,
      String jobFortune,
      String moneyFortune,
      String healthFortune,
      Map<String, dynamic> color,
      bool isGenerated});
}

/// @nodoc
class _$FortuneResultModelCopyWithImpl<$Res, $Val extends FortuneResultModel>
    implements $FortuneResultModelCopyWith<$Res> {
  _$FortuneResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generalFortune = null,
    Object? loveFortune = null,
    Object? jobFortune = null,
    Object? moneyFortune = null,
    Object? healthFortune = null,
    Object? color = null,
    Object? isGenerated = null,
  }) {
    return _then(_value.copyWith(
      generalFortune: null == generalFortune
          ? _value.generalFortune
          : generalFortune // ignore: cast_nullable_to_non_nullable
              as String,
      loveFortune: null == loveFortune
          ? _value.loveFortune
          : loveFortune // ignore: cast_nullable_to_non_nullable
              as String,
      jobFortune: null == jobFortune
          ? _value.jobFortune
          : jobFortune // ignore: cast_nullable_to_non_nullable
              as String,
      moneyFortune: null == moneyFortune
          ? _value.moneyFortune
          : moneyFortune // ignore: cast_nullable_to_non_nullable
              as String,
      healthFortune: null == healthFortune
          ? _value.healthFortune
          : healthFortune // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isGenerated: null == isGenerated
          ? _value.isGenerated
          : isGenerated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FortuneResultModelCopyWith<$Res>
    implements $FortuneResultModelCopyWith<$Res> {
  factory _$$_FortuneResultModelCopyWith(_$_FortuneResultModel value,
          $Res Function(_$_FortuneResultModel) then) =
      __$$_FortuneResultModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String generalFortune,
      String loveFortune,
      String jobFortune,
      String moneyFortune,
      String healthFortune,
      Map<String, dynamic> color,
      bool isGenerated});
}

/// @nodoc
class __$$_FortuneResultModelCopyWithImpl<$Res>
    extends _$FortuneResultModelCopyWithImpl<$Res, _$_FortuneResultModel>
    implements _$$_FortuneResultModelCopyWith<$Res> {
  __$$_FortuneResultModelCopyWithImpl(
      _$_FortuneResultModel _value, $Res Function(_$_FortuneResultModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generalFortune = null,
    Object? loveFortune = null,
    Object? jobFortune = null,
    Object? moneyFortune = null,
    Object? healthFortune = null,
    Object? color = null,
    Object? isGenerated = null,
  }) {
    return _then(_$_FortuneResultModel(
      generalFortune: null == generalFortune
          ? _value.generalFortune
          : generalFortune // ignore: cast_nullable_to_non_nullable
              as String,
      loveFortune: null == loveFortune
          ? _value.loveFortune
          : loveFortune // ignore: cast_nullable_to_non_nullable
              as String,
      jobFortune: null == jobFortune
          ? _value.jobFortune
          : jobFortune // ignore: cast_nullable_to_non_nullable
              as String,
      moneyFortune: null == moneyFortune
          ? _value.moneyFortune
          : moneyFortune // ignore: cast_nullable_to_non_nullable
              as String,
      healthFortune: null == healthFortune
          ? _value.healthFortune
          : healthFortune // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value._color
          : color // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isGenerated: null == isGenerated
          ? _value.isGenerated
          : isGenerated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FortuneResultModel
    with DiagnosticableTreeMixin
    implements _FortuneResultModel {
  const _$_FortuneResultModel(
      {required this.generalFortune,
      required this.loveFortune,
      required this.jobFortune,
      required this.moneyFortune,
      required this.healthFortune,
      required final Map<String, dynamic> color,
      this.isGenerated = false})
      : _color = color;

  @override
  final String generalFortune;
  @override
  final String loveFortune;
  @override
  final String jobFortune;
  @override
  final String moneyFortune;
  @override
  final String healthFortune;
  final Map<String, dynamic> _color;
  @override
  Map<String, dynamic> get color {
    if (_color is EqualUnmodifiableMapView) return _color;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_color);
  }

  @override
  @JsonKey()
  final bool isGenerated;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FortuneResultModel(generalFortune: $generalFortune, loveFortune: $loveFortune, jobFortune: $jobFortune, moneyFortune: $moneyFortune, healthFortune: $healthFortune, color: $color, isGenerated: $isGenerated)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FortuneResultModel'))
      ..add(DiagnosticsProperty('generalFortune', generalFortune))
      ..add(DiagnosticsProperty('loveFortune', loveFortune))
      ..add(DiagnosticsProperty('jobFortune', jobFortune))
      ..add(DiagnosticsProperty('moneyFortune', moneyFortune))
      ..add(DiagnosticsProperty('healthFortune', healthFortune))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('isGenerated', isGenerated));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FortuneResultModel &&
            (identical(other.generalFortune, generalFortune) ||
                other.generalFortune == generalFortune) &&
            (identical(other.loveFortune, loveFortune) ||
                other.loveFortune == loveFortune) &&
            (identical(other.jobFortune, jobFortune) ||
                other.jobFortune == jobFortune) &&
            (identical(other.moneyFortune, moneyFortune) ||
                other.moneyFortune == moneyFortune) &&
            (identical(other.healthFortune, healthFortune) ||
                other.healthFortune == healthFortune) &&
            const DeepCollectionEquality().equals(other._color, _color) &&
            (identical(other.isGenerated, isGenerated) ||
                other.isGenerated == isGenerated));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      generalFortune,
      loveFortune,
      jobFortune,
      moneyFortune,
      healthFortune,
      const DeepCollectionEquality().hash(_color),
      isGenerated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FortuneResultModelCopyWith<_$_FortuneResultModel> get copyWith =>
      __$$_FortuneResultModelCopyWithImpl<_$_FortuneResultModel>(
          this, _$identity);
}

abstract class _FortuneResultModel implements FortuneResultModel {
  const factory _FortuneResultModel(
      {required final String generalFortune,
      required final String loveFortune,
      required final String jobFortune,
      required final String moneyFortune,
      required final String healthFortune,
      required final Map<String, dynamic> color,
      final bool isGenerated}) = _$_FortuneResultModel;

  @override
  String get generalFortune;
  @override
  String get loveFortune;
  @override
  String get jobFortune;
  @override
  String get moneyFortune;
  @override
  String get healthFortune;
  @override
  Map<String, dynamic> get color;
  @override
  bool get isGenerated;
  @override
  @JsonKey(ignore: true)
  _$$_FortuneResultModelCopyWith<_$_FortuneResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}
