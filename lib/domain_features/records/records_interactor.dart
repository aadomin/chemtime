import 'package:dart_date/dart_date.dart';
import 'package:chemtime/domain_entities/employee/employee_entity.dart';
import 'package:chemtime/domain_entities/record/record_entity.dart';

import 'package:chemtime/domain_features/records/records_repository.dart';
import 'package:chemtime/domain_features/settings/settings_interactor.dart';
import 'package:flutter/material.dart';

class RecordsInteractor with ChangeNotifier {
  // RecordsInteractor({
  //   required this.recordsRepository,
  //   required this.settingsInteractor,
  // });

  // RecordsRepository recordsRepository;
  // SettingsInteractor settingsInteractor;

  // void initInteractor() {
  //   records = recordsRepository.loadRecords();
  // }

  // //

  // late List<RecordEntity> records; // M A I N   L I S T

  // //

  // List<EmployeeEntity> getNotFilledEmployeesAtWeek(DateTime dayOfWeek) {
  //   var listOfEmployees = <EmployeeEntity>[];

  //   for (final employee in settingsInteractor.listOfAllEmployees) {
  //     if (!settingsInteractor.wasEmployeeInTheCompanyAtWeek(
  //         employee, dayOfWeek)) {
  //       break;
  //     }
  //     var hasRecord = false;
  //     for (final record in records) {
  //       if (record.employeeName == employee.name &&
  //           record.firstDayOfThatWeek.getWeek == dayOfWeek.getWeek) {
  //         hasRecord = true;
  //       }
  //     }
  //     if (hasRecord == false) {
  //       listOfEmployees.add(employee);
  //     }
  //   }
  //   return listOfEmployees;
  // }

  // List<EmployeeEntity> getEmployeesOfWeek() {
  //   throw 'not implemented';
  // }

  // //

  // // M A I N   T H I N G

  // List<RecordEntity>? getRecordsOfEmployeeAtWeek(
  //     EmployeeEntity employee, DateTime firstDayOfWeek) {
  //   if (!settingsInteractor.wasEmployeeInTheCompanyAtWeek(
  //       employee, firstDayOfWeek)) {
  //     return null;
  //   }
  //   var listOfRecords = <RecordEntity>[];
  //   for (final record in records) {
  //     if (record.employeeName == employee.name &&
  //         record.firstDayOfThatWeek.getWeek == firstDayOfWeek.getWeek) {
  //       listOfRecords.add(record);
  //     }
  //   }
  //   return listOfRecords;
  // }
}
