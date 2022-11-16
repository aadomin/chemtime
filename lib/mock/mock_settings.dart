// import 'dart:convert';
import 'dart:math' as math;

import 'package:dart_date/dart_date.dart';

import 'package:chemtime/domain_entities/employee/employee_entity.dart';
import 'package:chemtime/domain_entities/employee_group/employee_group_entity.dart';
import 'package:chemtime/domain_entities/project/project_entity.dart';
import 'package:chemtime/domain_entities/settings/settings_entity.dart';
import 'package:chemtime/domain_entities/work_period/work_period_entity.dart';
// import 'package:flutter/material.dart';

class MockSettings {
  late final dateNow = DateTime.now();
  late final dateEstablish = DateTime(2008, 10, 10);
  late final dateOfWorldEnd = DateTime(2222, 10, 10);
  late final date2NextWeek = dateNow.nextWeek;
  late final date2PrevWeek = dateNow.previousWeek;
  late final dateProjectFinish = DateTime.now(); //?

  late final projects = [
    ProjectEntity(
      name: 'Пылеуловитель на трубопроводе природного газа',
      company: 'ПМУ',
      town: 'Пермь',
      stringShortcut: 'пыл',
      numberShortcut: '321',
      finishDate: dateProjectFinish,
    ),
    ProjectEntity(
      name: 'Малый ядерный реактор. Техническое перевооружение',
      company: 'Акрон',
      town: 'Дорогобуж',
      stringShortcut: 'ядр',
      numberShortcut: '322',
      finishDate: dateProjectFinish,
    ),
    ProjectEntity(
      name: 'Реконструкция ракетоносителя с установкой турбины',
      company: 'Минудобрения',
      town: 'Россошь',
      stringShortcut: 'рак',
      numberShortcut: '323',
      finishDate: dateProjectFinish,
    ),
    ProjectEntity(
      name:
          'Строительство детского сада. Авторский надзор и инструментальные исследования',
      company: 'НевСтрой',
      town: 'Невинномысск',
      stringShortcut: 'сада_Ан',
      numberShortcut: '323',
      finishDate: dateProjectFinish,
    ),
    ProjectEntity(
      name: 'ПД на ЗАГС',
      company: 'Тесла',
      town: 'Лос-Анжелес',
      stringShortcut: 'тес_АН',
      numberShortcut: '324',
      finishDate: dateProjectFinish,
    ),
    ProjectEntity(
      name: 'Транссибирская магистраль. Проектная документация',
      company: 'ГосДорога',
      town: 'Москва',
      stringShortcut: 'тра',
      numberShortcut: '333',
      finishDate: dateProjectFinish,
    ),
    ProjectEntity(
      name: 'Проект колонны. Проектная документация',
      company: 'ГосДорога',
      town: 'Москва',
      stringShortcut: 'тра',
      numberShortcut: '334',
      finishDate: dateProjectFinish,
    ),
    ProjectEntity(
      name: 'Бобышка',
      company: 'ГосДорога',
      town: 'Москва',
      stringShortcut: 'тра',
      numberShortcut: '335',
      finishDate: dateProjectFinish,
    ),
    ProjectEntity(
      name: 'Изменение регламентных норм',
      company: 'ГосДорога',
      town: 'Москва',
      stringShortcut: 'тра',
      numberShortcut: '336',
      finishDate: dateProjectFinish,
    )
  ];

  late final periodLong = WorkPeriodEntity(
      dateOfHire: dateEstablish, dateOfRetire: dateOfWorldEnd, salary: 10000);
  late final period1 = WorkPeriodEntity(
      dateOfHire: dateEstablish, dateOfRetire: date2PrevWeek, salary: 20000);
  late final period2 = WorkPeriodEntity(
      dateOfHire: date2NextWeek, dateOfRetire: dateOfWorldEnd, salary: 30000);
  late final period3 = WorkPeriodEntity(
      dateOfHire: dateNow, dateOfRetire: dateOfWorldEnd, salary: 30000);

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
        name: 'Лосева И.', sortingFactor: 600, periodsOfWork: [periodLong]),
    EmployeeEntity(
        name: 'Отпуск', sortingFactor: 700, periodsOfWork: [period1, period2]),
    EmployeeEntity(
        name: 'Бийонсе И.', sortingFactor: 800, periodsOfWork: [periodLong]),
    EmployeeEntity(
        name: 'Сэм Смит', sortingFactor: 900, periodsOfWork: [periodLong]),
    EmployeeEntity(
        name: 'Кобзон Иосиф', sortingFactor: 950, periodsOfWork: [periodLong]),
    EmployeeEntity(
        name: 'Мистер Фримен', sortingFactor: 990, periodsOfWork: [periodLong]),
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
  late final group4 = EmployeeGroupEntity(
    groupName: 'Э',
    employees: [employees[8], employees[9], employees[10]],
    sortingFactor: 400,
  );

  late final sett = SettingsEntity(
    projects: projects,
    shortcuts: [
      for (var i = 0; i < 15; i++)
        projects[math.Random().nextInt(projects.length)].stringShortcut,
    ],
    employeeGroups: [group1, group2, group3, group4],
    showFullWeekView: true,
    showFullWeekEmployeesView: true,
    showFullEmployeeView: true,
    showFullEmployeeWeekView: true,
    timestamp: DateTime.now(),
  );

  SettingsEntity loadMockSettings() {
    // String r = jsonEncode(sett.toJson());

    return sett;
  }
}
