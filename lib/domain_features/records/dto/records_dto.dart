// ignore: unused_import
import 'package:chemtime/domain_entities/record/record_entity.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// flutter pub run build_runner build
part 'records_dto.freezed.dart'; // !!!
part 'records_dto.g.dart'; // !!!

///
/// Model
///
@freezed
class RecordsDto with _$RecordsDto {
  const factory RecordsDto({
    required List<RecordEntity> records,
    required DateTime timestamp,
  }) = _RecordsDto;

  factory RecordsDto.fromJson(Map<String, Object?> json) =>
      _$RecordsDtoFromJson(json);
}
