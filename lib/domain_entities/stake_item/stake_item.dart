// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// flutter pub run build_runner build
part 'stake_item.freezed.dart'; // !!!
part 'stake_item.g.dart'; // !!!

///
/// Model
///
@freezed
class StakeItem with _$StakeItem {
  const factory StakeItem({
    required double stake,
    required String description,
    required bool selected,
  }) = _StakeItem;

  factory StakeItem.fromJson(Map<String, Object?> json) =>
      _$StakeItemFromJson(json);
}
