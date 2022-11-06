import 'dart:convert';
import 'dart:math' as math;

import 'package:dart_date/dart_date.dart';

import 'package:chemtime/domain_entities/employee/employee_entity.dart';
import 'package:chemtime/domain_entities/employee_group/employee_group_entity.dart';
import 'package:chemtime/domain_entities/project/project_entity.dart';
import 'package:chemtime/domain_entities/settings/settings_entity.dart';
import 'package:chemtime/domain_entities/work_period/work_period_entity.dart';

class MockSettings {
  late final dateNow = DateTime.now();
  late final dateEstablish = DateTime(2008, 10, 10);
  late final dateOfWorldEnd = DateTime(2222, 10, 10);
  late final date2NextWeek = dateNow.nextWeek.nextWeek;
  late final date2PrevWeek = dateNow.previousWeek.previousWeek;
  late final dateProjectFinish = DateTime.now(); //?

  late final projects = [
    ProjectEntity(
      name: 'Пылеуловитель на трубопроводе природного газа',
      company: 'ПМУ',
      town: 'Пермь',
      stringShortCut: 'пыл',
      numberShortCut: '321',
      finishDate: dateProjectFinish,
    ),
    ProjectEntity(
      name: 'Малый ядерный реактор. Техническое перевооружение',
      company: 'Акрон',
      town: 'Дорогобуж',
      stringShortCut: 'ядр',
      numberShortCut: '322',
      finishDate: dateProjectFinish,
    ),
    ProjectEntity(
      name: 'Реконструкция ракетоносителя с установкой турбины',
      company: 'Минудобрения',
      town: 'Россошь',
      stringShortCut: 'рак',
      numberShortCut: '323',
      finishDate: dateProjectFinish,
    ),
    ProjectEntity(
      name: 'Строительство детского сада. Авторский надзор',
      company: 'НевСтрой',
      town: 'Невинномысск',
      stringShortCut: 'сад_ан',
      numberShortCut: '323',
      finishDate: dateProjectFinish,
    )
  ];

  late final periodLong = WorkPeriodEntity(
      dateOfHire: dateEstablish, dateOfRetire: dateOfWorldEnd, salary: 10000);
  late final period1 = WorkPeriodEntity(
      dateOfHire: dateEstablish, dateOfRetire: date2PrevWeek, salary: 20000);
  late final period2 = WorkPeriodEntity(
      dateOfHire: date2NextWeek, dateOfRetire: dateOfWorldEnd, salary: 30000);

  late final employees = [
    EmployeeEntity(
        name: 'Иванов', sortingFactor: 100, periodsOfWork: [periodLong]),
    EmployeeEntity(
        name: 'Петров', sortingFactor: 200, periodsOfWork: [periodLong]),
    EmployeeEntity(
        name: 'Дуров', sortingFactor: 300, periodsOfWork: [periodLong]),
    EmployeeEntity(
        name: 'Крякин', sortingFactor: 400, periodsOfWork: [periodLong]),
    EmployeeEntity(
        name: 'Герцен Миша', sortingFactor: 500, periodsOfWork: [periodLong]),
    EmployeeEntity(
        name: 'Герцен М.', sortingFactor: 600, periodsOfWork: [periodLong]),
    EmployeeEntity(
        name: 'Село', sortingFactor: 700, periodsOfWork: [period1, period2]),
    EmployeeEntity(
        name: 'Лосев А.', sortingFactor: 800, periodsOfWork: [period2]),
  ];

  late final group1 = EmployeeGroupEntity(
    groupName: 'ТХ',
    employees: [employees[0]],
    sortingFactor: 100,
  );
  late final group2 = EmployeeGroupEntity(
    groupName: 'КД',
    employees: [employees[1], employees[2], employees[3]],
    sortingFactor: 200,
  );
  late final group3 = EmployeeGroupEntity(
    groupName: 'СТ',
    employees: [employees[4], employees[5], employees[6], employees[7]],
    sortingFactor: 300,
  );

  late final sett = SettingsEntity(
    projects: projects,
    shortcuts: [
      for (var i = 0; i < 15; i++)
        projects[math.Random().nextInt(15)].stringShortCut,
    ],
    employeeGroups: [group1, group2, group3],
    showFullWeekView: true,
    showFullWeekEmployeesView: true,
    showFullEmployeeView: true,
    showFullEmployeeWeekView: true,
  );

  SettingsEntity loadMockSettings() {
    String r = jsonEncode(sett.toJson());
    print(r);

    // print(WorkPeriodEntity.fromJson(jsonDecode(r)));
    // print(WorkPeriodEntity.fromJson(jsonDecode(r)).dateOfHire.minute);
    return sett;
  }
}
