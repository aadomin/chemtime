import 'package:chemtime/domain_features/records/records_interactor.dart';
import 'package:dart_date/dart_date.dart';
import 'package:chemtime/domain_features/week_services/my_datetime_extention.dart';
import 'package:flutter/material.dart';

class Main1WeeksPageVM with ChangeNotifier {
  Main1WeeksPageVM({
    required this.context,
    required this.recordsInteractor,
  });
  BuildContext context;
  RecordsInteractor recordsInteractor;

  late List<Listenable> listenTo = []; //TODO recordsInteractor

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

  String title() {
    final monday = DateTime.now().mondayOfThisWeek.russianDate;
    final sunday = DateTime.now().sundayOfThisWeek.russianDate;
    return 'Текущая: $monday - $sunday';
  }

  String shiftedMonday(int shift) =>
      DateTime.now().mondayBuilder(shift).russianDate;

  String shiftedSunday(int shift) =>
      DateTime.now().sundayBuilder(shift).russianDate;

  String shiftedWeekNumber(int shift) =>
      (DateTime.now().getWeek + shift).toString(); //TODO переход года

  String getNotFilledEmployeesAtWeek(int shift) {
    final employees = recordsInteractor
        .getNotFilledEmployeesAtWeek(DateTime.now().mondayBuilder(shift));
    var text = '';
    for (final employee in employees) {
      if (text == '') {
        text = employee.name;
      } else {
        text = '$text, ${employee.name}';
      }
    }
    return text;
  }
}
