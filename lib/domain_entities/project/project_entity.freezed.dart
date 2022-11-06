// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'project_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProjectEntity _$ProjectEntityFromJson(Map<String, dynamic> json) {
  return _ProjectEntity.fromJson(json);
}

/// @nodoc
mixin _$ProjectEntity {
  String get name => throw _privateConstructorUsedError; //?
  String get company => throw _privateConstructorUsedError; //?
  String get town => throw _privateConstructorUsedError; //?
  String get stringShortCut => throw _privateConstructorUsedError;
  String get numberShortCut => throw _privateConstructorUsedError;
  DateTime get finishDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectEntityCopyWith<ProjectEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectEntityCopyWith<$Res> {
  factory $ProjectEntityCopyWith(
          ProjectEntity value, $Res Function(ProjectEntity) then) =
      _$ProjectEntityCopyWithImpl<$Res, ProjectEntity>;
  @useResult
  $Res call(
      {String name,
      String company,
      String town,
      String stringShortCut,
      String numberShortCut,
      DateTime finishDate});
}

/// @nodoc
class _$ProjectEntityCopyWithImpl<$Res, $Val extends ProjectEntity>
    implements $ProjectEntityCopyWith<$Res> {
  _$ProjectEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? company = null,
    Object? town = null,
    Object? stringShortCut = null,
    Object? numberShortCut = null,
    Object? finishDate = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      town: null == town
          ? _value.town
          : town // ignore: cast_nullable_to_non_nullable
              as String,
      stringShortCut: null == stringShortCut
          ? _value.stringShortCut
          : stringShortCut // ignore: cast_nullable_to_non_nullable
              as String,
      numberShortCut: null == numberShortCut
          ? _value.numberShortCut
          : numberShortCut // ignore: cast_nullable_to_non_nullable
              as String,
      finishDate: null == finishDate
          ? _value.finishDate
          : finishDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectEntityCopyWith<$Res>
    implements $ProjectEntityCopyWith<$Res> {
  factory _$$_ProjectEntityCopyWith(
          _$_ProjectEntity value, $Res Function(_$_ProjectEntity) then) =
      __$$_ProjectEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String company,
      String town,
      String stringShortCut,
      String numberShortCut,
      DateTime finishDate});
}

/// @nodoc
class __$$_ProjectEntityCopyWithImpl<$Res>
    extends _$ProjectEntityCopyWithImpl<$Res, _$_ProjectEntity>
    implements _$$_ProjectEntityCopyWith<$Res> {
  __$$_ProjectEntityCopyWithImpl(
      _$_ProjectEntity _value, $Res Function(_$_ProjectEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? company = null,
    Object? town = null,
    Object? stringShortCut = null,
    Object? numberShortCut = null,
    Object? finishDate = null,
  }) {
    return _then(_$_ProjectEntity(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      town: null == town
          ? _value.town
          : town // ignore: cast_nullable_to_non_nullable
              as String,
      stringShortCut: null == stringShortCut
          ? _value.stringShortCut
          : stringShortCut // ignore: cast_nullable_to_non_nullable
              as String,
      numberShortCut: null == numberShortCut
          ? _value.numberShortCut
          : numberShortCut // ignore: cast_nullable_to_non_nullable
              as String,
      finishDate: null == finishDate
          ? _value.finishDate
          : finishDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProjectEntity with DiagnosticableTreeMixin implements _ProjectEntity {
  const _$_ProjectEntity(
      {required this.name,
      required this.company,
      required this.town,
      required this.stringShortCut,
      required this.numberShortCut,
      required this.finishDate});

  factory _$_ProjectEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectEntityFromJson(json);

  @override
  final String name;
//?
  @override
  final String company;
//?
  @override
  final String town;
//?
  @override
  final String stringShortCut;
  @override
  final String numberShortCut;
  @override
  final DateTime finishDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProjectEntity(name: $name, company: $company, town: $town, stringShortCut: $stringShortCut, numberShortCut: $numberShortCut, finishDate: $finishDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProjectEntity'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('company', company))
      ..add(DiagnosticsProperty('town', town))
      ..add(DiagnosticsProperty('stringShortCut', stringShortCut))
      ..add(DiagnosticsProperty('numberShortCut', numberShortCut))
      ..add(DiagnosticsProperty('finishDate', finishDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectEntity &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.town, town) || other.town == town) &&
            (identical(other.stringShortCut, stringShortCut) ||
                other.stringShortCut == stringShortCut) &&
            (identical(other.numberShortCut, numberShortCut) ||
                other.numberShortCut == numberShortCut) &&
            (identical(other.finishDate, finishDate) ||
                other.finishDate == finishDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, company, town,
      stringShortCut, numberShortCut, finishDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectEntityCopyWith<_$_ProjectEntity> get copyWith =>
      __$$_ProjectEntityCopyWithImpl<_$_ProjectEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectEntityToJson(
      this,
    );
  }
}

abstract class _ProjectEntity implements ProjectEntity {
  const factory _ProjectEntity(
      {required final String name,
      required final String company,
      required final String town,
      required final String stringShortCut,
      required final String numberShortCut,
      required final DateTime finishDate}) = _$_ProjectEntity;

  factory _ProjectEntity.fromJson(Map<String, dynamic> json) =
      _$_ProjectEntity.fromJson;

  @override
  String get name;
  @override //?
  String get company;
  @override //?
  String get town;
  @override //?
  String get stringShortCut;
  @override
  String get numberShortCut;
  @override
  DateTime get finishDate;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectEntityCopyWith<_$_ProjectEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
