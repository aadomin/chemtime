// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'records_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecordsDto _$RecordsDtoFromJson(Map<String, dynamic> json) {
  return _RecordsDto.fromJson(json);
}

/// @nodoc
mixin _$RecordsDto {
  List<RecordEntity> get records => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecordsDtoCopyWith<RecordsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordsDtoCopyWith<$Res> {
  factory $RecordsDtoCopyWith(
          RecordsDto value, $Res Function(RecordsDto) then) =
      _$RecordsDtoCopyWithImpl<$Res, RecordsDto>;
  @useResult
  $Res call({List<RecordEntity> records, DateTime timestamp});
}

/// @nodoc
class _$RecordsDtoCopyWithImpl<$Res, $Val extends RecordsDto>
    implements $RecordsDtoCopyWith<$Res> {
  _$RecordsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      records: null == records
          ? _value.records
          : records // ignore: cast_nullable_to_non_nullable
              as List<RecordEntity>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecordsDtoCopyWith<$Res>
    implements $RecordsDtoCopyWith<$Res> {
  factory _$$_RecordsDtoCopyWith(
          _$_RecordsDto value, $Res Function(_$_RecordsDto) then) =
      __$$_RecordsDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RecordEntity> records, DateTime timestamp});
}

/// @nodoc
class __$$_RecordsDtoCopyWithImpl<$Res>
    extends _$RecordsDtoCopyWithImpl<$Res, _$_RecordsDto>
    implements _$$_RecordsDtoCopyWith<$Res> {
  __$$_RecordsDtoCopyWithImpl(
      _$_RecordsDto _value, $Res Function(_$_RecordsDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? records = null,
    Object? timestamp = null,
  }) {
    return _then(_$_RecordsDto(
      records: null == records
          ? _value._records
          : records // ignore: cast_nullable_to_non_nullable
              as List<RecordEntity>,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecordsDto with DiagnosticableTreeMixin implements _RecordsDto {
  const _$_RecordsDto(
      {required final List<RecordEntity> records, required this.timestamp})
      : _records = records;

  factory _$_RecordsDto.fromJson(Map<String, dynamic> json) =>
      _$$_RecordsDtoFromJson(json);

  final List<RecordEntity> _records;
  @override
  List<RecordEntity> get records {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_records);
  }

  @override
  final DateTime timestamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecordsDto(records: $records, timestamp: $timestamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecordsDto'))
      ..add(DiagnosticsProperty('records', records))
      ..add(DiagnosticsProperty('timestamp', timestamp));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecordsDto &&
            const DeepCollectionEquality().equals(other._records, _records) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_records), timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecordsDtoCopyWith<_$_RecordsDto> get copyWith =>
      __$$_RecordsDtoCopyWithImpl<_$_RecordsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecordsDtoToJson(
      this,
    );
  }
}

abstract class _RecordsDto implements RecordsDto {
  const factory _RecordsDto(
      {required final List<RecordEntity> records,
      required final DateTime timestamp}) = _$_RecordsDto;

  factory _RecordsDto.fromJson(Map<String, dynamic> json) =
      _$_RecordsDto.fromJson;

  @override
  List<RecordEntity> get records;
  @override
  DateTime get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$_RecordsDtoCopyWith<_$_RecordsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
