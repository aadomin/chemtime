// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stake_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StakeItem _$$_StakeItemFromJson(Map<String, dynamic> json) => _$_StakeItem(
      stake: (json['stake'] as num).toDouble(),
      description: json['description'] as String,
      selected: json['selected'] as bool,
    );

Map<String, dynamic> _$$_StakeItemToJson(_$_StakeItem instance) =>
    <String, dynamic>{
      'stake': instance.stake,
      'description': instance.description,
      'selected': instance.selected,
    };
