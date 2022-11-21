import 'package:chemtime/domain_entities/employee/employee_entity.dart';
import 'package:chemtime/domain_entities/record/record_entity.dart';
import 'package:chemtime/domain_features/records/records_interactor.dart';
import 'package:chemtime/domain_features/settings/settings_interactor.dart';
import 'package:chemtime/domain_features/week_services/my_datetime_extention.dart';
import 'package:chemtime/ui_pages/details/details_page_di.dart';
import 'package:dart_date/dart_date.dart';
import 'package:flutter/material.dart';

class WeeksForEmployeePageVM with ChangeNotifier {
  WeeksForEmployeePageVM({
    required this.context,
    required this.employee,
    required this.recordsInteractor,
    required this.settingsInteractor,
  });
  BuildContext context;
  EmployeeEntity employee;
  RecordsInteractor recordsInteractor;
  SettingsInteractor settingsInteractor;

  late List<Listenable> listenTo = [recordsInteractor]; //[hardworkInteractor];
  void initVM() {
    for (var element in listenTo) {
      element.addListener(_updatesListener);
    }
  }

  void _updatesListener() => notifyListeners();
  void disposeVM() {
    for (var element in listenTo) {
      element.removeListener(_updatesListener);
    }
  }

  //

  String title1() {
    return 'Выбран: ${employee.name}';
  }

  String title2() {
    final monday = DateTime.now().mondayOfThisWeek.russianDate;
    final sunday = DateTime.now().sundayOfThisWeek.russianDate;
    return 'Текущая неделя: $monday - $sunday';
  }

  DateTime shiftedMonday(int shift) => DateTime.now().mondayBuilder(shift);

  DateTime shiftedSunday(int shift) => DateTime.now().sundayBuilder(shift);

  String shiftedWeekNumber(int shift) =>
      (DateTime.now().getWeek + shift).toString(); //TODO переход года

  bool isShiftedWeekCurrent(int index) =>
      shiftedMonday(index).mondayOfThisWeek == DateTime.now().mondayOfThisWeek;
  bool isShiftedWeekPrevious(int index) =>
      shiftedMonday(index).mondayOfThisWeek ==
      DateTime.now().add(const Duration(days: -7)).mondayOfThisWeek;
  bool isShiftedWeekNext(int index) =>
      shiftedMonday(index).mondayOfThisWeek ==
      DateTime.now().add(const Duration(days: 7)).mondayOfThisWeek;

  String shiftedElementTitle(int index) {
    var result =
        '${shiftedMonday(index).russianDate} - ${shiftedSunday(index).russianDate}';
    result += ', #$index, ${shiftedWeekNumber(index)}';

    if (isShiftedWeekCurrent(index)) result += ' (текущая)';
    if (isShiftedWeekPrevious(index)) result += ' (предыщущая)';
    if (isShiftedWeekNext(index)) result += ' (следующая)';
    return result;
  }

  String shiftedElementSubtitle(int index) {
    var dayOfWeek = shiftedMonday(index);
    if (!settingsInteractor.wasEmployeeInTheCompanyAtWeek(
        employee, dayOfWeek)) {
      return '(не работает в компании)';
    }

    Iterable<String> recordsList = recordsInteractor
        .getRecordsOfEmployeeAtWeek(employee, dayOfWeek)
        .map((e) => '${e.hours}ч ${e.stringShortcut}, ');
    if (recordsList.isEmpty) return '';

    var text = recordsList.reduce((value, element) => value += element);
    return text.substring(0, text.length - 1);
  }

  void onListTileTap(int index) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => DetailsPageDI(
          selectedDayOfWeek: shiftedMonday(index),
          employee: employee,
        ),
      ),
    );
  }
}
