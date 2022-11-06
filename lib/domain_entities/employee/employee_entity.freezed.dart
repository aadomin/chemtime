// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'employee_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmployeeEntity _$EmployeeEntityFromJson(Map<String, dynamic> json) {
  return _EmployeeEntity.fromJson(json);
}

/// @nodoc
mixin _$EmployeeEntity {
  String get name => throw _privateConstructorUsedError;
  int get sortingFactor => throw _privateConstructorUsedError;
  List<WorkPeriodEntity> get periodsOfWork =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeEntityCopyWith<EmployeeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeEntityCopyWith<$Res> {
  factory $EmployeeEntityCopyWith(
          EmployeeEntity value, $Res Function(EmployeeEntity) then) =
      _$EmployeeEntityCopyWithImpl<$Res, EmployeeEntity>;
  @useResult
  $Res call(
      {String name, int sortingFactor, List<WorkPeriodEntity> periodsOfWork});
}

/// @nodoc
class _$EmployeeEntityCopyWithImpl<$Res, $Val extends EmployeeEntity>
    implements $EmployeeEntityCopyWith<$Res> {
  _$EmployeeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? sortingFactor = null,
    Object? periodsOfWork = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sortingFactor: null == sortingFactor
          ? _value.sortingFactor
          : sortingFactor // ignore: cast_nullable_to_non_nullable
              as int,
      periodsOfWork: null == periodsOfWork
          ? _value.periodsOfWork
          : periodsOfWork // ignore: cast_nullable_to_non_nullable
              as List<WorkPeriodEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmployeeEntityCopyWith<$Res>
    implements $EmployeeEntityCopyWith<$Res> {
  factory _$$_EmployeeEntityCopyWith(
          _$_EmployeeEntity value, $Res Function(_$_EmployeeEntity) then) =
      __$$_EmployeeEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, int sortingFactor, List<WorkPeriodEntity> periodsOfWork});
}

/// @nodoc
class __$$_EmployeeEntityCopyWithImpl<$Res>
    extends _$EmployeeEntityCopyWithImpl<$Res, _$_EmployeeEntity>
    implements _$$_EmployeeEntityCopyWith<$Res> {
  __$$_EmployeeEntityCopyWithImpl(
      _$_EmployeeEntity _value, $Res Function(_$_EmployeeEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? sortingFactor = null,
    Object? periodsOfWork = null,
  }) {
    return _then(_$_EmployeeEntity(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sortingFactor: null == sortingFactor
          ? _value.sortingFactor
          : sortingFactor // ignore: cast_nullable_to_non_nullable
              as int,
      periodsOfWork: null == periodsOfWork
          ? _value._periodsOfWork
          : periodsOfWork // ignore: cast_nullable_to_non_nullable
              as List<WorkPeriodEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmployeeEntity
    with DiagnosticableTreeMixin
    implements _EmployeeEntity {
  const _$_EmployeeEntity(
      {required this.name,
      required this.sortingFactor,
      required final List<WorkPeriodEntity> periodsOfWork})
      : _periodsOfWork = periodsOfWork;

  factory _$_EmployeeEntity.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeeEntityFromJson(json);

  @override
  final String name;
  @override
  final int sortingFactor;
  final List<WorkPeriodEntity> _periodsOfWork;
  @override
  List<WorkPeriodEntity> get periodsOfWork {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_periodsOfWork);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmployeeEntity(name: $name, sortingFactor: $sortingFactor, periodsOfWork: $periodsOfWork)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EmployeeEntity'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('sortingFactor', sortingFactor))
      ..add(DiagnosticsProperty('periodsOfWork', periodsOfWork));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmployeeEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sortingFactor, sortingFactor) ||
                other.sortingFactor == sortingFactor) &&
            const DeepCollectionEquality()
                .equals(other._periodsOfWork, _periodsOfWork));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, sortingFactor,
      const DeepCollectionEquality().hash(_periodsOfWork));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmployeeEntityCopyWith<_$_EmployeeEntity> get copyWith =>
      __$$_EmployeeEntityCopyWithImpl<_$_EmployeeEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeeEntityToJson(
      this,
    );
  }
}

abstract class _EmployeeEntity implements EmployeeEntity {
  const factory _EmployeeEntity(
      {required final String name,
      required final int sortingFactor,
      required final List<WorkPeriodEntity> periodsOfWork}) = _$_EmployeeEntity;

  factory _EmployeeEntity.fromJson(Map<String, dynamic> json) =
      _$_EmployeeEntity.fromJson;

  @override
  String get name;
  @override
  int get sortingFactor;
  @override
  List<WorkPeriodEntity> get periodsOfWork;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeeEntityCopyWith<_$_EmployeeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
