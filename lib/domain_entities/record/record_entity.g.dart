// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecordEntity _$$_RecordEntityFromJson(Map<String, dynamic> json) =>
    _$_RecordEntity(
      stringShortcut: json['stringShortcut'] as String,
      employeeName: json['employeeName'] as String,
      hours: (json['hours'] as num).toDouble(),
      firstDayOfThatWeek: DateTime.parse(json['firstDayOfThatWeek'] as String),
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$_RecordEntityToJson(_$_RecordEntity instance) =>
    <String, dynamic>{
      'stringShortcut': instance.stringShortcut,
      'employeeName': instance.employeeName,
      'hours': instance.hours,
      'firstDayOfThatWeek': instance.firstDayOfThatWeek.toIso8601String(),
      'timestamp': instance.timestamp.toIso8601String(),
    };
