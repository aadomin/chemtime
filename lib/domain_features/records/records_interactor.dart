import 'dart:math';

import 'package:chemtime/domain_entities/project/project_entity.dart';
import 'package:chemtime/domain_features/week_services/my_datetime_extention.dart';
import 'package:dart_date/dart_date.dart';
import 'package:chemtime/domain_entities/employee/employee_entity.dart';
import 'package:chemtime/domain_entities/record/record_entity.dart';

import 'package:chemtime/domain_features/records/records_repository.dart';
import 'package:chemtime/domain_features/settings/settings_interactor.dart';
import 'package:flutter/material.dart';

class RecordsInteractor with ChangeNotifier {
  RecordsInteractor({
    required this.recordsRepository,
    required this.settingsInteractor,
  });

  RecordsRepository recordsRepository;
  SettingsInteractor settingsInteractor;

  void initInteractor() {
    records = recordsRepository.loadRecords();
  }

  //

  late List<RecordEntity> records; // M A I N   L I S T
  // ТУТВОПРОС

  //

  List<EmployeeEntity> getNotFilledEmployeesAtWeek(DateTime dayOfWeek) {
    var listOfEmployees = <EmployeeEntity>[];

    for (final employee in settingsInteractor.listOfAllEmployees) {
      if (!settingsInteractor.wasEmployeeInTheCompanyAtWeek(
          employee, dayOfWeek)) {
        break;
      }
      var hasRecord = false;
      for (final record in records) {
        if (record.employeeName == employee.name &&
            record.firstDayOfThatWeek.veryStartOfThisWeek ==
                dayOfWeek.veryStartOfThisWeek) {
          hasRecord = true;
        }
      }
      if (hasRecord == false) {
        listOfEmployees.add(employee);
      }
    }
    return listOfEmployees;
  }

  List<EmployeeEntity> getEmployeesOfWeek() {
    throw 'not implemented';
  }

  /// Main thing
  List<RecordEntity> getRecordsOfEmployeeAtWeek(
      EmployeeEntity employee, DateTime dayOfWeek) {
    if (!settingsInteractor.wasEmployeeInTheCompanyAtWeek(
        employee, dayOfWeek)) {
      return <RecordEntity>[];
    }
    var listOfRecords = <RecordEntity>[];
    for (final record in records) {
      if (record.employeeName == employee.name &&
          record.firstDayOfThatWeek.veryStartOfThisWeek ==
              dayOfWeek.veryStartOfThisWeek) {
        listOfRecords.add(record);
      }
    }
    return listOfRecords;
  }

  // ТУТВОПРОС
  // TODO write запросы с проверкой авторизации пользователя!
  // нужно ли

  Future<void> addRecord({
    required String projectStringShortcut,
    required EmployeeEntity employee,
    required DateTime dayOfWeek,
    required double hours,
  }) async {
    if (Random().nextInt(6) == 1) throw ''; //TODO remove it
    if (settingsInteractor.settings.projects
        .where((e) => e.stringShortcut == projectStringShortcut)
        .isEmpty) {
      throw Exception('shortcutError');
    }

    try {
      var newRecord = RecordEntity(
        stringShortcut: projectStringShortcut,
        employeeName: employee.name,
        hours: hours,
        firstDayOfThatWeek: dayOfWeek.mondayOfThisWeek,
        timestamp: DateTime.now(),
        nonUniqueKey: Random().nextInt(32000),
      );

      await recordsRepository.addRecord(newRecord); //TODO repo

      records = [...records, newRecord];
      notifyListeners();
      return;
    } catch (e) {
      debugPrint('fuck'); //TODO
    }
  }

  Future<void> addRecordWithProject({
    required ProjectEntity project,
    required EmployeeEntity employee,
    required DateTime dayOfWeek,
  }) async {
    addRecord(
      employee: employee,
      dayOfWeek: dayOfWeek,
      projectStringShortcut: project.stringShortcut,
      hours: 0,
    );
  }

  Future<void> addRecordWithProjectStringShortcut({
    required String projectStringShortcut,
    required EmployeeEntity employee,
    required DateTime dayOfWeek,
  }) async {
    addRecord(
      employee: employee,
      dayOfWeek: dayOfWeek,
      projectStringShortcut: projectStringShortcut,
      hours: 0,
    );
  }

  Future<void> onDuplicatePreviousWeek({
    required EmployeeEntity employee,
    required DateTime dayOfWeek,
  }) async {
    var previousWeekDay =
        dayOfWeek.add(const Duration(days: -7)).mondayOfThisWeek;
    var recordsOfEmployeeInPreviousWeek = records.where((e) =>
        e.employeeName == employee.name &&
        e.firstDayOfThatWeek.mondayOfThisWeek == previousWeekDay);
    for (final record in recordsOfEmployeeInPreviousWeek) {
      addRecord(
        employee: employee,
        dayOfWeek: dayOfWeek,
        projectStringShortcut: record.stringShortcut,
        hours: record.hours,
      );
    }
  }

  Future<void> removeRecord(RecordEntity record) async {
    if (records.where((e) => e == record).isEmpty) {
      throw Exception('record not found');
    }
    try {
      await recordsRepository.removeRecord(record); //TODO repo
      records.remove(record); //TODO repo

      notifyListeners();
    } on Exception catch (e) {
      debugPrint('fuck'); //TODO
    }
  }

  Future<void> replaceRecord({
    required RecordEntity oldRecord,
    required RecordEntity newRecord,
  }) async {
    if (records.where((e) => e == oldRecord).isEmpty) {
      throw Exception('record not found');
    }

    try {
      await recordsRepository.updateRecord(oldRecord, newRecord); //TODO repo

      records = records.map((e) => e == oldRecord ? newRecord : e).toList();
      // ТУТВОПРОС адекватно ли

      notifyListeners();

      // ТУТВОПРОС норм ли замена пункта
      // было так раньше
      // records.remove(oldRecord);
      // records.add(newRecord);

      // records[records.indexWhere((element) => element == record)] =
      //     records[records.indexWhere((element) => element == record)]
      //         .copyWith(hours: selectedHours);
    } catch (e) {
      debugPrint('fuck'); //TODO
    }
  }

  Future<List<RecordEntity>> loadRecordsFromFile(String pathToFile) {
    throw 'not implemented';
  }

  Future<void> saveSettingsToFile(
      List<RecordEntity> records, String pathToFile) {
    throw 'not implemented';
  }
}
