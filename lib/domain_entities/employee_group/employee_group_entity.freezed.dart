// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'employee_group_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmployeeGroupEntity _$EmployeeGroupEntityFromJson(Map<String, dynamic> json) {
  return _EmployeeGroupEntity.fromJson(json);
}

/// @nodoc
mixin _$EmployeeGroupEntity {
  String get groupName => throw _privateConstructorUsedError;
  List<EmployeeEntity> get employees => throw _privateConstructorUsedError;
  int get sortingFactor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeGroupEntityCopyWith<EmployeeGroupEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeGroupEntityCopyWith<$Res> {
  factory $EmployeeGroupEntityCopyWith(
          EmployeeGroupEntity value, $Res Function(EmployeeGroupEntity) then) =
      _$EmployeeGroupEntityCopyWithImpl<$Res, EmployeeGroupEntity>;
  @useResult
  $Res call(
      {String groupName, List<EmployeeEntity> employees, int sortingFactor});
}

/// @nodoc
class _$EmployeeGroupEntityCopyWithImpl<$Res, $Val extends EmployeeGroupEntity>
    implements $EmployeeGroupEntityCopyWith<$Res> {
  _$EmployeeGroupEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupName = null,
    Object? employees = null,
    Object? sortingFactor = null,
  }) {
    return _then(_value.copyWith(
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      employees: null == employees
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<EmployeeEntity>,
      sortingFactor: null == sortingFactor
          ? _value.sortingFactor
          : sortingFactor // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmployeeGroupEntityCopyWith<$Res>
    implements $EmployeeGroupEntityCopyWith<$Res> {
  factory _$$_EmployeeGroupEntityCopyWith(_$_EmployeeGroupEntity value,
          $Res Function(_$_EmployeeGroupEntity) then) =
      __$$_EmployeeGroupEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String groupName, List<EmployeeEntity> employees, int sortingFactor});
}

/// @nodoc
class __$$_EmployeeGroupEntityCopyWithImpl<$Res>
    extends _$EmployeeGroupEntityCopyWithImpl<$Res, _$_EmployeeGroupEntity>
    implements _$$_EmployeeGroupEntityCopyWith<$Res> {
  __$$_EmployeeGroupEntityCopyWithImpl(_$_EmployeeGroupEntity _value,
      $Res Function(_$_EmployeeGroupEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupName = null,
    Object? employees = null,
    Object? sortingFactor = null,
  }) {
    return _then(_$_EmployeeGroupEntity(
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      employees: null == employees
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<EmployeeEntity>,
      sortingFactor: null == sortingFactor
          ? _value.sortingFactor
          : sortingFactor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmployeeGroupEntity
    with DiagnosticableTreeMixin
    implements _EmployeeGroupEntity {
  const _$_EmployeeGroupEntity(
      {required this.groupName,
      required final List<EmployeeEntity> employees,
      required this.sortingFactor})
      : _employees = employees;

  factory _$_EmployeeGroupEntity.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeeGroupEntityFromJson(json);

  @override
  final String groupName;
  final List<EmployeeEntity> _employees;
  @override
  List<EmployeeEntity> get employees {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employees);
  }

  @override
  final int sortingFactor;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmployeeGroupEntity(groupName: $groupName, employees: $employees, sortingFactor: $sortingFactor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EmployeeGroupEntity'))
      ..add(DiagnosticsProperty('groupName', groupName))
      ..add(DiagnosticsProperty('employees', employees))
      ..add(DiagnosticsProperty('sortingFactor', sortingFactor));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmployeeGroupEntity &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees) &&
            (identical(other.sortingFactor, sortingFactor) ||
                other.sortingFactor == sortingFactor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, groupName,
      const DeepCollectionEquality().hash(_employees), sortingFactor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmployeeGroupEntityCopyWith<_$_EmployeeGroupEntity> get copyWith =>
      __$$_EmployeeGroupEntityCopyWithImpl<_$_EmployeeGroupEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeeGroupEntityToJson(
      this,
    );
  }
}

abstract class _EmployeeGroupEntity implements EmployeeGroupEntity {
  const factory _EmployeeGroupEntity(
      {required final String groupName,
      required final List<EmployeeEntity> employees,
      required final int sortingFactor}) = _$_EmployeeGroupEntity;

  factory _EmployeeGroupEntity.fromJson(Map<String, dynamic> json) =
      _$_EmployeeGroupEntity.fromJson;

  @override
  String get groupName;
  @override
  List<EmployeeEntity> get employees;
  @override
  int get sortingFactor;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeeGroupEntityCopyWith<_$_EmployeeGroupEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
