// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'week_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeekEntity _$WeekEntityFromJson(Map<String, dynamic> json) {
  return _WeekEntity.fromJson(json);
}

/// @nodoc
mixin _$WeekEntity {
  DateTime get dayOfWeek => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeekEntityCopyWith<WeekEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekEntityCopyWith<$Res> {
  factory $WeekEntityCopyWith(
          WeekEntity value, $Res Function(WeekEntity) then) =
      _$WeekEntityCopyWithImpl<$Res, WeekEntity>;
  @useResult
  $Res call({DateTime dayOfWeek});
}

/// @nodoc
class _$WeekEntityCopyWithImpl<$Res, $Val extends WeekEntity>
    implements $WeekEntityCopyWith<$Res> {
  _$WeekEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayOfWeek = null,
  }) {
    return _then(_value.copyWith(
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeekEntityCopyWith<$Res>
    implements $WeekEntityCopyWith<$Res> {
  factory _$$_WeekEntityCopyWith(
          _$_WeekEntity value, $Res Function(_$_WeekEntity) then) =
      __$$_WeekEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime dayOfWeek});
}

/// @nodoc
class __$$_WeekEntityCopyWithImpl<$Res>
    extends _$WeekEntityCopyWithImpl<$Res, _$_WeekEntity>
    implements _$$_WeekEntityCopyWith<$Res> {
  __$$_WeekEntityCopyWithImpl(
      _$_WeekEntity _value, $Res Function(_$_WeekEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayOfWeek = null,
  }) {
    return _then(_$_WeekEntity(
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeekEntity with DiagnosticableTreeMixin implements _WeekEntity {
  const _$_WeekEntity({required this.dayOfWeek});

  factory _$_WeekEntity.fromJson(Map<String, dynamic> json) =>
      _$$_WeekEntityFromJson(json);

  @override
  final DateTime dayOfWeek;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WeekEntity(dayOfWeek: $dayOfWeek)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WeekEntity'))
      ..add(DiagnosticsProperty('dayOfWeek', dayOfWeek));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeekEntity &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dayOfWeek);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeekEntityCopyWith<_$_WeekEntity> get copyWith =>
      __$$_WeekEntityCopyWithImpl<_$_WeekEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeekEntityToJson(
      this,
    );
  }
}

abstract class _WeekEntity implements WeekEntity {
  const factory _WeekEntity({required final DateTime dayOfWeek}) =
      _$_WeekEntity;

  factory _WeekEntity.fromJson(Map<String, dynamic> json) =
      _$_WeekEntity.fromJson;

  @override
  DateTime get dayOfWeek;
  @override
  @JsonKey(ignore: true)
  _$$_WeekEntityCopyWith<_$_WeekEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
