// import 'package:flutter/material.dart';

// ///
// /// reports about time was spent
// ///
// abstract class RecordsInteractor {
//   List<RecordEntity>? allReports;
//   List<EmployeeEntity>? getNotFilledEmployeesAtWeek(WeekEntity week);
//   List<EmployeeEntity>? getEmployeesOfWeek();
//   List<DateTime>? getWeeks(); //??????
//   List<RecordEntity>? getRecordsOfEmployeeAtWeek(
//       EmployeeEntity employee, DateTime firstDayOfWeek);
//   RecordEntity likeLastWeek(EmployeeEntity employee, DateTime firstDayOfWeek);
// }

// @immutable
// abstract class RecordEntity {
//   late final String? projectName;
//   late final double? hours;
//   late final DateTime? firstDayOfWeek; // для SQL, маппить в Week();
// }

// abstract class Weeks {
//   // all static
//   DateTime? currentWeek();
//   List<DateTime?> weekBuilder(DateTime? startPoint, int delta);

//   int numberOfThatWeekInTheYear(DateTime? firstDayOfWeek);
//   DateTime? addSeveralWeeks(DateTime that, int addent);
//   DateTime? firstDayOfWeek(DateTime? dayOfWeek);
//   DateTime? lastDayOfWeek(DateTime? dayOfWeek);
// }

// // not in json
// @immutable
// abstract class WeekEntity {
//   WeekEntity(DateTime? dayOfTheWeek);
//   DateTime? firstDayOfWeek;
//   DateTime? lastDayOfWeek();
//   int numberOfThatWeekInTheYear();
//   bool isThatCurrentWeek();
// }

// ///
// ///
// ///
// ///
// ///
// ///
// /// Settings

// abstract class SettingInteractor {
//   Future<SettingsEntity?> loadSettingsFromFile(String pathToFile);
//   Future<void> saveSettingsToFile(SettingsEntity settings);
//   List<EmployeeEntity>? getEmployeesWhoWorkedAtWeek(DateTime firstDayOfWeek);
//   List<ProjectEntity> findProject(String searchText);
// }

// @immutable
// abstract class SettingsEntity {
//   List<ProjectEntity>? projects;
//   List<String>? shortcuts; // 15 items
//   List<EmployeeEntity>? employees;
//   List<Tree>? empoyeesTree;
//   bool? showFullWeekView;
//   bool? showFullWeekEmployeesView;
//   bool? showFullEmployeeView;
//   bool? showFullEmployeeWeekView;
// }

// class Tree {} //tree

// @immutable
// abstract class EmployeeEntity {
//   late final String? name;
//   late final DateTime? dateOfHire;
//   late final DateTime? dateOfRetire;
//   late final int? salary;
// }

// @immutable
// abstract class ProjectEntity {
//   late final String? fullName;
//   late final String? shortCut;
//   late final int? number;
//   late final DateTime? submitDate;
// }

// abstract class ReportsInteractor {
//   ReportsInteractor(RecordsInteractor recordsInteractor);
//   String generateReportForWeek(DateTime firstDayOfWeek); //filterFrom filterTo
//   String generateReportForEmployee(EmployeeEntity employee);
//   String generateReportForProject(ProjectEntity project);
//   DateTime? filterFrom;
//   DateTime? filterTo;
// }
