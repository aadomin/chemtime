import 'package:chemtime/ui_pages/select_hours/select_hours_page_di.dart';
import 'package:dart_date/dart_date.dart';

import 'package:chemtime/domain_features/week_services/my_datetime_extention.dart';

import 'package:chemtime/domain_entities/employee/employee_entity.dart';
import 'package:chemtime/domain_entities/project/project_entity.dart';
import 'package:chemtime/domain_entities/record/record_entity.dart';
import 'package:chemtime/domain_features/records/records_interactor.dart';
import 'package:chemtime/domain_features/settings/settings_interactor.dart';
import 'package:flutter/material.dart';

class DetailsPageVM with ChangeNotifier {
  DetailsPageVM({
    required this.context,
    required this.recordsInteractor,
    required this.settingsInteractor,
    required this.selectedDayOfWeek,
    required this.employee,
  });

  BuildContext context;
  SettingsInteractor settingsInteractor;
  RecordsInteractor recordsInteractor;
  DateTime selectedDayOfWeek;
  EmployeeEntity employee;
  late List<RecordEntity> records;
  late List<RecordEntity> previousWeekRecords;
  late Map<String, ProjectEntity> recordsProjects; //ТУТВОПРОС

  TextEditingController projectFilterTextController = TextEditingController();
  PageController pageViewController = PageController(initialPage: 1);

  late List<Listenable> listenTo = [recordsInteractor, settingsInteractor];
  void initVM() {
    for (var element in listenTo) {
      element.addListener(_updatesListener);
    }
    _loadData();
    notifyListeners();
  }

  void _updatesListener() => notifyListeners();
  void disposeVM() {
    for (var element in listenTo) {
      element.removeListener(_updatesListener);
    }
  }

  //

  void _loadData() {
    records = recordsInteractor.getRecordsOfEmployeeAtWeek(
        employee, selectedDayOfWeek);
    previousWeekRecords = recordsInteractor.getRecordsOfEmployeeAtWeek(
        employee, selectedDayOfWeek.previousWeek);

    recordsProjects = <String, ProjectEntity>{};
    for (final record in records) {
      recordsProjects[record.stringShortcut] =
          (settingsInteractor.settings.projects.firstWhere(
              (element) => element.stringShortcut == record.stringShortcut));
    }
    notifyListeners();
  }

  String get title1 => '${employee.name}';
  String get title2 =>
      '${selectedDayOfWeek.mondayOfThisWeek.russianDate} ${selectedDayOfWeek.getWeek == DateTime.now().getWeek ? '(текущая)' : ''}';

  bool get wasEmployeeInTheCompanyAtWeek => settingsInteractor
      .wasEmployeeInTheCompanyAtWeek(employee, selectedDayOfWeek);

  List<String> get shortcutsList => settingsInteractor.settings.shortcuts;

  List<ProjectEntity> get allProjects => settingsInteractor.settings.projects;

  Future<void> onTapOnRecordHours(RecordEntity record) async {
    double selectedHours =
        await Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return SelectHoursPageDI(
                selectedHours: record.hours,
                stringShortcut: record.stringShortcut,
              );
            })) ??
            0;
    records[records.indexWhere((element) => element == record)] =
        records[records.indexWhere((element) => element == record)]
            .copyWith(hours: selectedHours);
    //TODO исправить на интерактор
    notifyListeners();
  }

  void onTapOnRemoveRecord(RecordEntity record) {
    records.remove(record);
    notifyListeners();
    //TODO исправить потому что удалять в интеракторе.
  }

  //

  void onPreviousWeek() {
    selectedDayOfWeek = selectedDayOfWeek.previousWeek;
    _loadData();
  }

  void onNextWeek() {
    selectedDayOfWeek = selectedDayOfWeek.nextWeek;
    _loadData();
  }

  void onPageViewChanged(int page) {
    debugPrint(
        '4. page - $page, pageViewController.page = ${pageViewController.page}');
    Future.delayed(const Duration(milliseconds: 400), () {
      if (page == 0) {
        debugPrint(
            '5. page - $page, pageViewController.page = ${pageViewController.page}');
        selectedDayOfWeek = selectedDayOfWeek.previousWeek;
        _loadData();
        pageViewController.jumpToPage(1);
      }
      if (page == 2) {
        debugPrint(
            '5. page - $page, pageViewController.page = ${pageViewController.page}');
        selectedDayOfWeek = selectedDayOfWeek.nextWeek;
        _loadData();
        pageViewController.jumpToPage(1);
      }

      debugPrint(
          '6. page - $page, pageViewController.page = ${pageViewController.page}');
    });
  }
}
