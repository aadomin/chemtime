// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// flutter pub run build_runner build
part 'project_entity.freezed.dart'; // !!!
part 'project_entity.g.dart'; // !!!

///
/// Model
///
@freezed
class ProjectEntity with _$ProjectEntity {
  const factory ProjectEntity({
    required String name, //?
    required String company, //?
    required String town, //?
    required String stringShortcut,
    required String numberShortcut,
    required DateTime finishDate,
  }) = _ProjectEntity;

  factory ProjectEntity.fromJson(Map<String, Object?> json) =>
      _$ProjectEntityFromJson(json);
}

extension ProjectEntityExt on ProjectEntity {
  String get fullName => '$numberShortcut. $company - $name ($stringShortcut)';
}
