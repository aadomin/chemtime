// ignore: unused_import
import 'package:chemtime/domain_entities/employee/employee_entity.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// flutter pub run build_runner build
part 'employee_group_entity.freezed.dart'; // !!!
part 'employee_group_entity.g.dart'; // !!!

///
/// Model
///
@freezed
class EmployeeGroupEntity with _$EmployeeGroupEntity {
  const factory EmployeeGroupEntity({
    required String groupName,
    required List<EmployeeEntity> employees,
    required int sortingFactor,
  }) = _EmployeeGroupEntity;

  factory EmployeeGroupEntity.fromJson(Map<String, Object?> json) =>
      _$EmployeeGroupEntityFromJson(json);
}
