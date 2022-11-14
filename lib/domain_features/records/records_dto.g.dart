// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'records_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecordsDto _$$_RecordsDtoFromJson(Map<String, dynamic> json) =>
    _$_RecordsDto(
      records: (json['records'] as List<dynamic>)
          .map((e) => RecordEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$_RecordsDtoToJson(_$_RecordsDto instance) =>
    <String, dynamic>{
      'records': instance.records.map((e) => e.toJson()).toList(),
      'timestamp': instance.timestamp.toIso8601String(),
    };
