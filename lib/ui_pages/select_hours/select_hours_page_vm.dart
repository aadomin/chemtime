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

    //TODO del this
    // Future.delayed(
    //   const Duration(microseconds: 1),
    //   () {
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       SnackBar(
    //         content: Text(
    //             'w${MediaQuery.of(context).size.width} h${MediaQuery.of(context).size.height}'),
    //       ),
    //     );
    //   },
    // );
    //TODO del this
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
}
