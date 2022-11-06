// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecordEntity _$$_RecordEntityFromJson(Map<String, dynamic> json) =>
    _$_RecordEntity(
      projectName: json['projectName'] as String,
      employeeName: json['employeeName'] as String,
      hours: (json['hours'] as num).toDouble(),
      firstDayOfThatWeek: DateTime.parse(json['firstDayOfThatWeek'] as String),
    );

Map<String, dynamic> _$$_RecordEntityToJson(_$_RecordEntity instance) =>
    <String, dynamic>{
      'projectName': instance.projectName,
      'employeeName': instance.employeeName,
      'hours': instance.hours,
      'firstDayOfThatWeek': instance.firstDayOfThatWeek.toIso8601String(),
    };
