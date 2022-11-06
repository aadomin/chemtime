// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProjectEntity _$$_ProjectEntityFromJson(Map<String, dynamic> json) =>
    _$_ProjectEntity(
      name: json['name'] as String,
      company: json['company'] as String,
      town: json['town'] as String,
      stringShortCut: json['stringShortCut'] as String,
      numberShortCut: json['numberShortCut'] as String,
      finishDate: DateTime.parse(json['finishDate'] as String),
    );

Map<String, dynamic> _$$_ProjectEntityToJson(_$_ProjectEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'company': instance.company,
      'town': instance.town,
      'stringShortCut': instance.stringShortCut,
      'numberShortCut': instance.numberShortCut,
      'finishDate': instance.finishDate.toIso8601String(),
    };
