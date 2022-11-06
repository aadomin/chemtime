// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_period_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkPeriodEntity _$$_WorkPeriodEntityFromJson(Map<String, dynamic> json) =>
    _$_WorkPeriodEntity(
      dateOfHire: DateTime.parse(json['dateOfHire'] as String),
      dateOfRetire: DateTime.parse(json['dateOfRetire'] as String),
      salary: json['salary'] as int,
    );

Map<String, dynamic> _$$_WorkPeriodEntityToJson(_$_WorkPeriodEntity instance) =>
    <String, dynamic>{
      'dateOfHire': instance.dateOfHire.toIso8601String(),
      'dateOfRetire': instance.dateOfRetire.toIso8601String(),
      'salary': instance.salary,
    };
