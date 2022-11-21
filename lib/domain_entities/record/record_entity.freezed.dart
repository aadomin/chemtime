// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'record_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecordEntity _$RecordEntityFromJson(Map<String, dynamic> json) {
  return _RecordEntity.fromJson(json);
}

/// @nodoc
mixin _$RecordEntity {
  String get stringShortcut => throw _privateConstructorUsedError;
  String get employeeName => throw _privateConstructorUsedError;
  double get hours => throw _privateConstructorUsedError;
  DateTime get firstDayOfThatWeek => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  int get nonUniqueKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordEntityCopyWith<RecordEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordEntityCopyWith<$Res> {
  factory $RecordEntityCopyWith(
          RecordEntity value, $Res Function(RecordEntity) then) =
      _$RecordEntityCopyWithImpl<$Res, RecordEntity>;
  @useResult
  $Res call(
      {String stringShortcut,
      String employeeName,
      double hours,
      DateTime firstDayOfThatWeek,
      DateTime timestamp,
      int nonUniqueKey});
}

/// @nodoc
class _$RecordEntityCopyWithImpl<$Res, $Val extends RecordEntity>
    implements $RecordEntityCopyWith<$Res> {
  _$RecordEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stringShortcut = null,
    Object? employeeName = null,
    Object? hours = null,
    Object? firstDayOfThatWeek = null,
    Object? timestamp = null,
    Object? nonUniqueKey = null,
  }) {
    return _then(_value.copyWith(
      stringShortcut: null == stringShortcut
          ? _value.stringShortcut
          : stringShortcut // ignore: cast_nullable_to_non_nullable
              as String,
      employeeName: null == employeeName
          ? _value.employeeName
          : employeeName // ignore: cast_nullable_to_non_nullable
              as String,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as double,
      firstDayOfThatWeek: null == firstDayOfThatWeek
          ? _value.firstDayOfThatWeek
          : firstDayOfThatWeek // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      nonUniqueKey: null == nonUniqueKey
          ? _value.nonUniqueKey
          : nonUniqueKey // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecordEntityCopyWith<$Res>
    implements $RecordEntityCopyWith<$Res> {
  factory _$$_RecordEntityCopyWith(
          _$_RecordEntity value, $Res Function(_$_RecordEntity) then) =
      __$$_RecordEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String stringShortcut,
      String employeeName,
      double hours,
      DateTime firstDayOfThatWeek,
      DateTime timestamp,
      int nonUniqueKey});
}

/// @nodoc
class __$$_RecordEntityCopyWithImpl<$Res>
    extends _$RecordEntityCopyWithImpl<$Res, _$_RecordEntity>
    implements _$$_RecordEntityCopyWith<$Res> {
  __$$_RecordEntityCopyWithImpl(
      _$_RecordEntity _value, $Res Function(_$_RecordEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stringShortcut = null,
    Object? employeeName = null,
    Object? hours = null,
    Object? firstDayOfThatWeek = null,
    Object? timestamp = null,
    Object? nonUniqueKey = null,
  }) {
    return _then(_$_RecordEntity(
      stringShortcut: null == stringShortcut
          ? _value.stringShortcut
          : stringShortcut // ignore: cast_nullable_to_non_nullable
              as String,
      employeeName: null == employeeName
          ? _value.employeeName
          : employeeName // ignore: cast_nullable_to_non_nullable
              as String,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as double,
      firstDayOfThatWeek: null == firstDayOfThatWeek
          ? _value.firstDayOfThatWeek
          : firstDayOfThatWeek // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      nonUniqueKey: null == nonUniqueKey
          ? _value.nonUniqueKey
          : nonUniqueKey // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecordEntity with DiagnosticableTreeMixin implements _RecordEntity {
  const _$_RecordEntity(
      {required this.stringShortcut,
      required this.employeeName,
      required this.hours,
      required this.firstDayOfThatWeek,
      required this.timestamp,
      required this.nonUniqueKey});

  factory _$_RecordEntity.fromJson(Map<String, dynamic> json) =>
      _$$_RecordEntityFromJson(json);

  @override
  final String stringShortcut;
  @override
  final String employeeName;
  @override
  final double hours;
  @override
  final DateTime firstDayOfThatWeek;
  @override
  final DateTime timestamp;
  @override
  final int nonUniqueKey;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordEntity(stringShortcut: $stringShortcut, employeeName: $employeeName, hours: $hours, firstDayOfThatWeek: $firstDayOfThatWeek, timestamp: $timestamp, nonUniqueKey: $nonUniqueKey)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecordEntity'))
      ..add(DiagnosticsProperty('stringShortcut', stringShortcut))
      ..add(DiagnosticsProperty('employeeName', employeeName))
      ..add(DiagnosticsProperty('hours', hours))
      ..add(DiagnosticsProperty('firstDayOfThatWeek', firstDayOfThatWeek))
      ..add(DiagnosticsProperty('timestamp', timestamp))
      ..add(DiagnosticsProperty('nonUniqueKey', nonUniqueKey));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecordEntity &&
            (identical(other.stringShortcut, stringShortcut) ||
                other.stringShortcut == stringShortcut) &&
            (identical(other.employeeName, employeeName) ||
                other.employeeName == employeeName) &&
            (identical(other.hours, hours) || other.hours == hours) &&
            (identical(other.firstDayOfThatWeek, firstDayOfThatWeek) ||
                other.firstDayOfThatWeek == firstDayOfThatWeek) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.nonUniqueKey, nonUniqueKey) ||
                other.nonUniqueKey == nonUniqueKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, stringShortcut, employeeName,
      hours, firstDayOfThatWeek, timestamp, nonUniqueKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecordEntityCopyWith<_$_RecordEntity> get copyWith =>
      __$$_RecordEntityCopyWithImpl<_$_RecordEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecordEntityToJson(
      this,
    );
  }
}

abstract class _RecordEntity implements RecordEntity {
  const factory _RecordEntity(
      {required final String stringShortcut,
      required final String employeeName,
      required final double hours,
      required final DateTime firstDayOfThatWeek,
      required final DateTime timestamp,
      required final int nonUniqueKey}) = _$_RecordEntity;

  factory _RecordEntity.fromJson(Map<String, dynamic> json) =
      _$_RecordEntity.fromJson;

  @override
  String get stringShortcut;
  @override
  String get employeeName;
  @override
  double get hours;
  @override
  DateTime get firstDayOfThatWeek;
  @override
  DateTime get timestamp;
  @override
  int get nonUniqueKey;
  @override
  @JsonKey(ignore: true)
  _$$_RecordEntityCopyWith<_$_RecordEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
