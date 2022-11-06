// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmployeeEntity _$$_EmployeeEntityFromJson(Map<String, dynamic> json) =>
    _$_EmployeeEntity(
      name: json['name'] as String,
      sortingFactor: json['sortingFactor'] as int,
      periodsOfWork: (json['periodsOfWork'] as List<dynamic>)
          .map((e) => WorkPeriodEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EmployeeEntityToJson(_$_EmployeeEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sortingFactor': instance.sortingFactor,
      'periodsOfWork': instance.periodsOfWork.map((e) => e.toJson()).toList(),
    };
