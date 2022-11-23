import 'package:flutter/material.dart';

class CalculatorOfStakeVM with ChangeNotifier {
  CalculatorOfStakeVM({
    required this.context,
    //required this.hardworkInteractor,
  });
  BuildContext context;
  //Interactor hardworkInteractor;
  late List<Listenable> listenTo = []; //[hardworkInteractor];
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

  var selectedDays = <String, bool>{
    'пн': true,
    'вт': true,
    'ср': true,
    'чт': true,
    'пт': true,
    'сб': false,
    'вс': false,
  };

  void onToggleSelectionOfTheDay(String dayName) {
    selectedDays[dayName] = !selectedDays[dayName]!;
    notifyListeners();
  }

  int get selectedDaysAmount => selectedDays.entries.fold(
      0,
      (previousValue, element) =>
          element.value ? previousValue + 1 : previousValue);

  //

  var firstLine = <int, bool>{
    1: true,
    2: false,
    3: false,
    4: false,
    5: false,
    6: false,
    7: false,
  };
  var secondLine = <int, bool>{
    1: false,
    2: false,
    3: false,
    4: false,
    5: false,
    6: false,
    7: true,
  };

  void onToggleOnFirstLineElement(int selectedIndex) {
    for (final i in firstLine.keys) {
      if (i == selectedIndex) {
        firstLine[i] = !firstLine[i]!;
      } else {
        firstLine[i] = false;
      }
    }
    notifyListeners();
  }

  void onToggleOnSecondLineElement(int selectedIndex) {
    for (final i in secondLine.keys) {
      if (i == selectedIndex) {
        secondLine[i] = !secondLine[i]!;
      } else {
        secondLine[i] = false;
      }
    }
    notifyListeners();
  }

  int get firstLineSelectedElement {
    // ТУТВОПРОС firstWhere?
    if (firstLine.entries.where((element) => element.value).isEmpty) return 0;
    return firstLine.entries.firstWhere((element) => element.value).key;
  }

  int get secondLineSelectedElement {
    if (secondLine.entries.where((element) => element.value).isEmpty) return 0;
    return secondLine.entries.firstWhere((element) => element.value).key;
  }

  //

  double get resultHours =>
      selectedDaysAmount *
      8 *
      (firstLineSelectedElement.toDouble() /
          secondLineSelectedElement.toDouble());

  double get resultHoursRounded => (resultHours * 10).round() / 10;

  void onSave() {
    Navigator.of(context).pop(resultHoursRounded);
  }

  void onCancel() {
    Navigator.of(context).pop();
  }
}
