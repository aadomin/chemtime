import 'package:flutter/material.dart';

class Main2EmployeesVM with ChangeNotifier {
  Main2EmployeesVM({
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
}
