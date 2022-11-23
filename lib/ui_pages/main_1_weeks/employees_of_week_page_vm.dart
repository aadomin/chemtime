import 'package:chemtime/ui_pages/details/details_page_di.dart';
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
    required this.selectedDayOfWeek,
  });
  BuildContext context;
  SettingsInteractor settingsInteractor;
  RecordsInteractor recordsInteractor;
  DateTime selectedDayOfWeek;
  PageController pageViewController = PageController(initialPage: 1);

  late List<Listenable> listenTo = [settingsInteractor, recordsInteractor];

  void initVM() {
    for (var element in listenTo) {
      element.addListener(_updatesListener);
    }
    _loadData();
  }

  void _updatesListener() => notifyListeners();
  void disposeVM() {
    for (var element in listenTo) {
      element.removeListener(_updatesListener);
    }
  }

  Map<EmployeeEntity, List<RecordEntity>> employeesAndRecords = {};
  List<EmployeeGroupEntity> employeesGroupsTree = [];

  void _loadData() {
    employeesAndRecords.clear();

    for (final employee in settingsInteractor
        .getEmployeesWhoWasInTheCompanyAtWeek(selectedDayOfWeek)) {
      employeesAndRecords[employee] = recordsInteractor
          .getRecordsOfEmployeeAtWeek(employee, selectedDayOfWeek);
    }

    employeesGroupsTree = settingsInteractor
        .getTreeOfEmployeesWhoWasInTheCompanyAtWeek(selectedDayOfWeek);

    notifyListeners();

    // second try
  }

  String get title1 {
    final monday = selectedDayOfWeek.mondayOfThisWeek.russianDate;
    final sunday = selectedDayOfWeek.sundayOfThisWeek.russianDate;
    return '$monday - $sunday';
  }

  String get title2 =>
      'Неделя №${selectedDayOfWeek.getWeek}, ${selectedDayOfWeek.commentAboutWeek}';

  void onPreviousWeek() {
    selectedDayOfWeek = selectedDayOfWeek.add(const Duration(days: -7));
    _loadData();
  }

  void onNextWeek() {
    selectedDayOfWeek = selectedDayOfWeek.add(const Duration(days: 7));
    _loadData();
  }

  Future<void> onEmployeeTap(EmployeeEntity employee) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => DetailsPageDI(
          selectedDayOfWeek: selectedDayOfWeek,
          employee: employee,
        ),
      ),
    );
    //ТУТВОПРОС
    _loadData();
  }

  void onHorizontalScrollPage(int page) {
    Future.delayed(
      const Duration(milliseconds: 400),
      () {
        if (page == 0) {
          onPreviousWeek();
          pageViewController.jumpToPage(1);
        }
        if (page == 2) {
          onNextWeek();
          pageViewController.jumpToPage(1);
        }
      },
    );
  }
}
