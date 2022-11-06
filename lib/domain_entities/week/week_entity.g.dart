// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'week_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeekEntity _$$_WeekEntityFromJson(Map<String, dynamic> json) =>
    _$_WeekEntity(
      dayOfWeek: DateTime.parse(json['dayOfWeek'] as String),
    );

Map<String, dynamic> _$$_WeekEntityToJson(_$_WeekEntity instance) =>
    <String, dynamic>{
      'dayOfWeek': instance.dayOfWeek.toIso8601String(),
    };
