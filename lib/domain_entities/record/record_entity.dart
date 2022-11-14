// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// flutter pub run build_runner build
part 'record_entity.freezed.dart'; // !!!
part 'record_entity.g.dart'; // !!!

///
/// Model
///
@freezed
class RecordEntity with _$RecordEntity {
  const factory RecordEntity({
    required String stringShortcut,
    required String employeeName,
    required double hours,
    required DateTime firstDayOfThatWeek,
    required DateTime timestamp,
  }) = _RecordEntity;

  factory RecordEntity.fromJson(Map<String, Object?> json) =>
      _$RecordEntityFromJson(json);
}
