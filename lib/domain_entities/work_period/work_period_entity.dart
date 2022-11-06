// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// flutter pub run build_runner build
part 'work_period_entity.freezed.dart'; // !!!
part 'work_period_entity.g.dart'; // !!!

///
/// Model
///
@freezed
class WorkPeriodEntity with _$WorkPeriodEntity {
  const factory WorkPeriodEntity({
    required DateTime dateOfHire,
    required DateTime dateOfRetire,
    required int salary,
  }) = _WorkPeriodEntity;

  factory WorkPeriodEntity.fromJson(Map<String, Object?> json) =>
      _$WorkPeriodEntityFromJson(json);
}
