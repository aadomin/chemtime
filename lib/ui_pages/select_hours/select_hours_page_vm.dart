import 'package:chemtime/ui_pages/select_stake/calculator_of_stake_page_di.dart';
import 'package:flutter/material.dart';

class SelectHoursPageVM with ChangeNotifier {
  SelectHoursPageVM({
    required this.context,
    required this.selectedHours,
    required this.stringShortcut,
  });
  BuildContext context;
  double selectedHours;
  String stringShortcut;

  TextEditingController textController = TextEditingController();

  late List<Listenable> listenTo = []; //[hardworkInteractor];
  void initVM() {
    for (var element in listenTo) {
      element.addListener(_updatesListener);
    }
    textController.text = selectedHours.toString();
    notifyListeners();
  }

  void _updatesListener() => notifyListeners();
  void disposeVM() {
    for (var element in listenTo) {
      element.removeListener(_updatesListener);
    }
  }

  //

  void onCancel() {
    Navigator.of(context).pop(null);
  }

  void onSave() {
    Navigator.of(context).pop(selectedHours);
  }

  void onChangeTextField(String value) {
    try {
      selectedHours = double.parse(value);
    } catch (e) {
      selectedHours = 0.0;
    }
    notifyListeners();
  }

  void onTapOnHour(int hour) {
    selectedHours = hour.toDouble();
    textController.text = selectedHours.toString();
    notifyListeners();
    onSave(); //TODO рассмотреть потом
  }

  Future<void> onOpenStakeSelection() async {
    // ТУТВОПРОС
    dynamic result = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const CalculatorOfStakeDI(),
      ),
    );
    if (result is! double) return;
    selectedHours = result;
    textController.text = selectedHours.toString();
    notifyListeners();
    onSave();
  }

  Map<int, String> daysShorts = {
    4: '0.5д',
    12: '1.5д',
    20: '2.5д',
    28: '3.5д',
    36: '4.5д',
    8: '1д',
    16: '2д',
    24: '3д',
    32: '4д',
    40: '5д',
  };
}
