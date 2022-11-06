import 'package:flutter/material.dart';

class MyAppAndRoutesVM with ChangeNotifier {
  MyAppAndRoutesVM({
    required this.context,
    // required this.settingsInteractor,
  });

  BuildContext context;
  // final SettingsInteractor settingsInteractor;

  void initVM() {
    // settingsInteractor.addListener(_settingsInteractorListener);
  }

  // void _settingsInteractorListener() => notifyListeners();

  void disposeVM() {
    // settingsInteractor.removeListener(_settingsInteractorListener);
  }
}
