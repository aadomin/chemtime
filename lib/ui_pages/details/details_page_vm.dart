import 'package:chemtime/domain_features/auth/auth_interactor.dart';
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
    required this.authInteractor,
    required this.selectedDayOfWeek,
    required this.employee,
  });

  BuildContext context;
  SettingsInteractor settingsInteractor;
  RecordsInteractor recordsInteractor;
  AuthInteractor authInteractor;
  DateTime selectedDayOfWeek;
  EmployeeEntity employee;
  late List<RecordEntity> records;
  late List<RecordEntity> previousWeekRecords;
  late Map<String, ProjectEntity> recordsProjects; //ТУТВОПРОС

  TextEditingController projectFilterTextController = TextEditingController();
  PageController pageViewController = PageController(initialPage: 1);

  late List<Listenable> listenTo = [
    recordsInteractor,
    settingsInteractor,
    authInteractor,
  ];
  void initVM() {
    for (var element in listenTo) {
      element.addListener(_updatesListener);
    }
    _loadData();
    notifyListeners();
  }

  void _updatesListener() {
    _loadData(); //ТУТВОПРОС не нравится. как инитСтейт.
    notifyListeners();
  }

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
    _loadProjectsDetails();
    notifyListeners();
  }

  void _loadProjectsDetails() {
    recordsProjects = <String, ProjectEntity>{};
    for (final record in records) {
      recordsProjects[record.stringShortcut] =
          (settingsInteractor.settings.projects.firstWhere(
              (element) => element.stringShortcut == record.stringShortcut));
    }
  }

  //

  String get title1 => '${employee.name}';
  String get title2 =>
      '${selectedDayOfWeek.mondayOfThisWeek.russianDate} - ${selectedDayOfWeek.sundayOfThisWeek.russianDate} ${selectedDayOfWeek.commentAboutWeek}';

  bool get wasEmployeeInTheCompanyAtWeek => settingsInteractor
      .wasEmployeeInTheCompanyAtWeek(employee, selectedDayOfWeek);

  List<String> get shortcutsList => settingsInteractor.settings.shortcuts;

  //

  String textInFilter = '';

  void onFilterTextChange(String value) {
    textInFilter = value;
    notifyListeners();
  }

  // TODO будет изменена модель проекта
  List<ProjectEntity> filteredProjects() {
    if (textInFilter.isEmpty) return settingsInteractor.settings.projects;
    return [
      for (final project in settingsInteractor.settings.projects)
        if (project.fullName
            .toLowerCase()
            .contains(textInFilter.toLowerCase())) //
          project
    ];
  }

  // GET

  void onPreviousWeek() {
    selectedDayOfWeek = selectedDayOfWeek.previousWeek;
    _loadData();
  }

  void onNextWeek() {
    selectedDayOfWeek = selectedDayOfWeek.nextWeek;
    _loadData();
  }

  void onPageViewChanged(int page) {
    Future.delayed(
      const Duration(milliseconds: 400),
      () {
        if (page == 0) {
          selectedDayOfWeek = selectedDayOfWeek.previousWeek;
          _loadData();
          pageViewController.jumpToPage(1);
        }
        if (page == 2) {
          selectedDayOfWeek = selectedDayOfWeek.nextWeek;
          _loadData();
          pageViewController.jumpToPage(1);
        }
      },
    );
  }

  // SET

  Future<void> onTapOnRecordHours(RecordEntity record) async {
    if (authInteractor.currentUserCanOnlyRead) {
      _showMessageReadOnlyUser();
      return;
    }
    var newHours =
        await Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return SelectHoursPageDI(
                selectedHours: record.hours,
                stringShortcut: record.stringShortcut,
              );
            })) ??
            0;

    var oldRecord = record;
    var newRecord = record.copyWith(hours: newHours);

    recordsInteractor.replaceRecord(
      oldRecord: oldRecord,
      newRecord: newRecord,
    );

    notifyListeners();
  }

  Future<void> onTapOnRemoveRecord(RecordEntity record) async {
    if (authInteractor.currentUserCanOnlyRead) {
      _showMessageReadOnlyUser();
      return;
    }
    //ТУТВОПРОС вот так появляется ошибка
    // records.remove(record);
    // notifyListeners();
    try {
      await recordsInteractor.removeRecord(record);
      // not notify because we listen notifies from recordsInteractor
    } catch (e) {
      _showMessageError();
    }
  }

  Future<void> onAddProject(project) async {
    if (authInteractor.currentUserCanOnlyRead) {
      _showMessageReadOnlyUser();
      return;
    }
    try {
      await recordsInteractor.addRecordWithProject(
        project: project,
        employee: employee,
        dayOfWeek: selectedDayOfWeek,
      );
      // not notify because we listen notifies from recordsInteractor
    } catch (e) {
      _showMessageError();
    }
  }

  Future<void> onAddProjectFromShortcut({required String shortcut}) async {
    // ТУТВОПРОС - где проверка авторизации пользователя?
    // если тут - тут можно сообщение показать что не хватает прав.
    // но вообще лучше же в интеракторе наверно ..или и там и там
    if (authInteractor.currentUserCanOnlyRead) {
      _showMessageReadOnlyUser();
      return;
    }
    try {
      await recordsInteractor.addRecordWithProjectStringShortcut(
        projectStringShortcut: shortcut,
        employee: employee,
        dayOfWeek: selectedDayOfWeek,
      );
      // not notifyListeners because we listen recordsInteractor
    } catch (e) {
      _showMessageError();
    }
  }

  Future<void> onDuplicateLastWeek() async {
    if (authInteractor.currentUserCanOnlyRead) {
      _showMessageReadOnlyUser();
      return;
    }
    try {
      await recordsInteractor.onDuplicatePreviousWeek(
        employee: employee,
        dayOfWeek: selectedDayOfWeek,
      );
      // not notifyListeners because we listen recordsInteractor
    } catch (e) {
      _showMessageError();
    }
  }

  void _showMessageError() {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Произошла ошибка')));
  }

  void _showMessageReadOnlyUser() {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Редактирование не доступно')));
  }
}
