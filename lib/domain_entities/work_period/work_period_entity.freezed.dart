// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'work_period_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkPeriodEntity _$WorkPeriodEntityFromJson(Map<String, dynamic> json) {
  return _WorkPeriodEntity.fromJson(json);
}

/// @nodoc
mixin _$WorkPeriodEntity {
  DateTime get dateOfHire => throw _privateConstructorUsedError;
  DateTime get dateOfRetire => throw _privateConstructorUsedError;
  int get salary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkPeriodEntityCopyWith<WorkPeriodEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkPeriodEntityCopyWith<$Res> {
  factory $WorkPeriodEntityCopyWith(
          WorkPeriodEntity value, $Res Function(WorkPeriodEntity) then) =
      _$WorkPeriodEntityCopyWithImpl<$Res, WorkPeriodEntity>;
  @useResult
  $Res call({DateTime dateOfHire, DateTime dateOfRetire, int salary});
}

/// @nodoc
class _$WorkPeriodEntityCopyWithImpl<$Res, $Val extends WorkPeriodEntity>
    implements $WorkPeriodEntityCopyWith<$Res> {
  _$WorkPeriodEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateOfHire = null,
    Object? dateOfRetire = null,
    Object? salary = null,
  }) {
    return _then(_value.copyWith(
      dateOfHire: null == dateOfHire
          ? _value.dateOfHire
          : dateOfHire // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateOfRetire: null == dateOfRetire
          ? _value.dateOfRetire
          : dateOfRetire // ignore: cast_nullable_to_non_nullable
              as DateTime,
      salary: null == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkPeriodEntityCopyWith<$Res>
    implements $WorkPeriodEntityCopyWith<$Res> {
  factory _$$_WorkPeriodEntityCopyWith(
          _$_WorkPeriodEntity value, $Res Function(_$_WorkPeriodEntity) then) =
      __$$_WorkPeriodEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime dateOfHire, DateTime dateOfRetire, int salary});
}

/// @nodoc
class __$$_WorkPeriodEntityCopyWithImpl<$Res>
    extends _$WorkPeriodEntityCopyWithImpl<$Res, _$_WorkPeriodEntity>
    implements _$$_WorkPeriodEntityCopyWith<$Res> {
  __$$_WorkPeriodEntityCopyWithImpl(
      _$_WorkPeriodEntity _value, $Res Function(_$_WorkPeriodEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateOfHire = null,
    Object? dateOfRetire = null,
    Object? salary = null,
  }) {
    return _then(_$_WorkPeriodEntity(
      dateOfHire: null == dateOfHire
          ? _value.dateOfHire
          : dateOfHire // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateOfRetire: null == dateOfRetire
          ? _value.dateOfRetire
          : dateOfRetire // ignore: cast_nullable_to_non_nullable
              as DateTime,
      salary: null == salary
          ? _value.salary
          : salary // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkPeriodEntity
    with DiagnosticableTreeMixin
    implements _WorkPeriodEntity {
  const _$_WorkPeriodEntity(
      {required this.dateOfHire,
      required this.dateOfRetire,
      required this.salary});

  factory _$_WorkPeriodEntity.fromJson(Map<String, dynamic> json) =>
      _$$_WorkPeriodEntityFromJson(json);

  @override
  final DateTime dateOfHire;
  @override
  final DateTime dateOfRetire;
  @override
  final int salary;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkPeriodEntity(dateOfHire: $dateOfHire, dateOfRetire: $dateOfRetire, salary: $salary)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkPeriodEntity'))
      ..add(DiagnosticsProperty('dateOfHire', dateOfHire))
      ..add(DiagnosticsProperty('dateOfRetire', dateOfRetire))
      ..add(DiagnosticsProperty('salary', salary));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorkPeriodEntity &&
            (identical(other.dateOfHire, dateOfHire) ||
                other.dateOfHire == dateOfHire) &&
            (identical(other.dateOfRetire, dateOfRetire) ||
                other.dateOfRetire == dateOfRetire) &&
            (identical(other.salary, salary) || other.salary == salary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, dateOfHire, dateOfRetire, salary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkPeriodEntityCopyWith<_$_WorkPeriodEntity> get copyWith =>
      __$$_WorkPeriodEntityCopyWithImpl<_$_WorkPeriodEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkPeriodEntityToJson(
      this,
    );
  }
}

abstract class _WorkPeriodEntity implements WorkPeriodEntity {
  const factory _WorkPeriodEntity(
      {required final DateTime dateOfHire,
      required final DateTime dateOfRetire,
      required final int salary}) = _$_WorkPeriodEntity;

  factory _WorkPeriodEntity.fromJson(Map<String, dynamic> json) =
      _$_WorkPeriodEntity.fromJson;

  @override
  DateTime get dateOfHire;
  @override
  DateTime get dateOfRetire;
  @override
  int get salary;
  @override
  @JsonKey(ignore: true)
  _$$_WorkPeriodEntityCopyWith<_$_WorkPeriodEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
