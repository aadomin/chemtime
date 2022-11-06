// ignore: unused_import
import 'package:chemtime/domain_entities/work_period/work_period_entity.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// flutter pub run build_runner build
part 'employee_entity.freezed.dart'; // !!!
part 'employee_entity.g.dart'; // !!!

///
/// Model
///
@freezed
class EmployeeEntity with _$EmployeeEntity {
  const factory EmployeeEntity({
    required String name,
    required int sortingFactor,
    required List<WorkPeriodEntity> periodsOfWork,
  }) = _EmployeeEntity;

  factory EmployeeEntity.fromJson(Map<String, Object?> json) =>
      _$EmployeeEntityFromJson(json);
}
