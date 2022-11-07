import 'package:dart_date/dart_date.dart';
import 'package:chemtime/domain_features/week_services/my_datetime_extention.dart';

import 'package:chemtime/domain_entities/employee/employee_entity.dart';
import 'package:chemtime/domain_entities/employee_group/employee_group_entity.dart';
import 'package:chemtime/domain_entities/record/record_entity.dart';
import 'package:chemtime/domain_features/records/records_interactor.dart';
import 'package:chemtime/domain_features/settings/settings_interactor.dart';
import 'package:flutter/material.dart';

class EmployeesOfWeekPageVM with ChangeNotifier {
  EmployeesOfWeekPageVM({
    required this.context,
    required this.settingsInteractor,
    required this.recordsInteractor,
  });
  BuildContext context;
  SettingsInteractor settingsInteractor;
  RecordsInteractor recordsInteractor;

  late List<Listenable> listenTo = [settingsInteractor, recordsInteractor];

  void initVM() {
    for (var element in listenTo) element.addListener(_updatesListener);
    _loadData();
  }

  void _updatesListener() => notifyListeners();
  void disposeVM() {
    for (var element in listenTo) element.removeListener(_updatesListener);
  }

  Map<EmployeeEntity, List<RecordEntity>> employeesAndRecords = {};

  List<EmployeeGroupEntity> employeesGroupsTree = [];

  late DateTime currentDayOfWeek = DateTime.now();

  void _loadData() {
    for (final employee in settingsInteractor
        .getEmployeesWhoWasInTheCompanyAtWeek(currentDayOfWeek)) {
      employeesAndRecords[employee] = recordsInteractor
          .getRecordsOfEmployeeAtWeek(employee, currentDayOfWeek);
    }

    employeesGroupsTree = settingsInteractor
        .getTreeOfEmployeesWhoWasInTheCompanyAtWeek(currentDayOfWeek);

    debugPrint('### employeesGroupsTree ###' + employeesGroupsTree.toString());
    debugPrint('### employeesAndRecords ###' + employeesAndRecords.toString());
    notifyListeners();
  }

  void onPreviousWeek() {
    currentDayOfWeek = currentDayOfWeek.add(const Duration(days: -7));
    _loadData();
  }

  void onNextWeek() {
    currentDayOfWeek = currentDayOfWeek.add(const Duration(days: 7));
    _loadData();
  }

  String get title {
    final monday = currentDayOfWeek.mondayOfThisWeek.russianDate;
    final sunday = currentDayOfWeek.sundayOfThisWeek.russianDate;
    final ifCurrent =
        currentDayOfWeek.getWeek == DateTime.now().getWeek ? '(текущая)' : '';
    return '${currentDayOfWeek.getWeek}. $monday - $sunday $ifCurrent';
  }
}
