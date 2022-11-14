// ignore: unused_import
import 'package:chemtime/domain_entities/employee_group/employee_group_entity.dart';
import 'package:chemtime/domain_entities/project/project_entity.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// flutter pub run build_runner build
part 'settings_entity.freezed.dart'; // !!!
part 'settings_entity.g.dart'; // !!!

///
/// Model
///
@freezed
class SettingsEntity with _$SettingsEntity {
  const factory SettingsEntity({
    required List<ProjectEntity> projects,
    required List<String> shortcuts, // 15 items
    required List<EmployeeGroupEntity> employeeGroups,
    required bool showFullWeekView,
    required bool showFullWeekEmployeesView,
    required bool showFullEmployeeView,
    required bool showFullEmployeeWeekView,
    required DateTime timestamp,
  }) = _SettingsEntity;

  factory SettingsEntity.fromJson(Map<String, Object?> json) =>
      _$SettingsEntityFromJson(json);
}
