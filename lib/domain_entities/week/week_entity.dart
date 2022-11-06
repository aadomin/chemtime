// ignore: unused_import
import 'package:chemtime/domain_features/week_services/week_services.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dart_date/dart_date.dart';

import 'package:chemtime/domain_features/week_services/my_datetime_extention.dart';

// flutter pub run build_runner build
part 'week_entity.freezed.dart'; // !!!
part 'week_entity.g.dart'; // !!!

///
/// Week Helper
///
@freezed
class WeekEntity with _$WeekEntity {
  const factory WeekEntity({
    required DateTime dayOfWeek,
  }) = _WeekEntity;

  factory WeekEntity.fromJson(Map<String, Object?> json) =>
      _$WeekEntityFromJson(json);

  factory WeekEntity.builder(DateTime dayOfWeek, int weeks) {
    return WeekEntity(dayOfWeek: dayOfWeek.add(Duration(days: 7 * weeks)));
  }
}

extension WeekEntityExt on WeekEntity {
  DateTime get monday => dayOfWeek.mondayOfThisWeek;
  DateTime get sunday => dayOfWeek.sundayOfThisWeek;

  DateTime get begin => dayOfWeek.veryStartOfThisWeek;
  DateTime get end => dayOfWeek.veryFinishOfThisWeek;

  int get number => dayOfWeek.getWeek;
}
