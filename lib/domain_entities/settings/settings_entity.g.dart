// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingsEntity _$$_SettingsEntityFromJson(Map<String, dynamic> json) =>
    _$_SettingsEntity(
      projects: (json['projects'] as List<dynamic>)
          .map((e) => ProjectEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      shortcuts:
          (json['shortcuts'] as List<dynamic>).map((e) => e as String).toList(),
      employeeGroups: (json['employeeGroups'] as List<dynamic>)
          .map((e) => EmployeeGroupEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      showFullWeekView: json['showFullWeekView'] as bool,
      showFullWeekEmployeesView: json['showFullWeekEmployeesView'] as bool,
      showFullEmployeeView: json['showFullEmployeeView'] as bool,
      showFullEmployeeWeekView: json['showFullEmployeeWeekView'] as bool,
    );

Map<String, dynamic> _$$_SettingsEntityToJson(_$_SettingsEntity instance) =>
    <String, dynamic>{
      'projects': instance.projects.map((e) => e.toJson()).toList(),
      'shortcuts': instance.shortcuts,
      'employeeGroups': instance.employeeGroups.map((e) => e.toJson()).toList(),
      'showFullWeekView': instance.showFullWeekView,
      'showFullWeekEmployeesView': instance.showFullWeekEmployeesView,
      'showFullEmployeeView': instance.showFullEmployeeView,
      'showFullEmployeeWeekView': instance.showFullEmployeeWeekView,
    };
