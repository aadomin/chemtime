// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_group_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmployeeGroupEntity _$$_EmployeeGroupEntityFromJson(
        Map<String, dynamic> json) =>
    _$_EmployeeGroupEntity(
      groupName: json['groupName'] as String,
      employees: (json['employees'] as List<dynamic>)
          .map((e) => EmployeeEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      sortingFactor: json['sortingFactor'] as int,
    );

Map<String, dynamic> _$$_EmployeeGroupEntityToJson(
        _$_EmployeeGroupEntity instance) =>
    <String, dynamic>{
      'groupName': instance.groupName,
      'employees': instance.employees.map((e) => e.toJson()).toList(),
      'sortingFactor': instance.sortingFactor,
    };
