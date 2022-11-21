import 'package:chemtime/domain_entities/employee/employee_entity.dart';
import 'package:chemtime/domain_entities/employee_group/employee_group_entity.dart';
import 'package:chemtime/domain_features/settings/settings_interactor.dart';
import 'package:chemtime/domain_features/week_services/my_datetime_extention.dart';
import 'package:chemtime/ui_pages/main_2_employees/weeks_for_employee_page_di.dart';
import 'package:flutter/material.dart';

class Main2EmployeesVM with ChangeNotifier {
  Main2EmployeesVM({
    required this.context,
    required this.settingsInteractor,
  });
  BuildContext context;
  SettingsInteractor settingsInteractor;
  late List<Listenable> listenTo = [settingsInteractor]; //[hardworkInteractor];
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

  bool isRetiredShown = false;

  String title() {
    final monday = DateTime.now().mondayOfThisWeek.russianDate;
    final sunday = DateTime.now().sundayOfThisWeek.russianDate;
    return 'Текущая неделя: $monday - $sunday';
  }

  List<EmployeeGroupEntity> get shownEmployeesGroups {
    if (isRetiredShown) {
      return settingsInteractor.settings.employeeGroups;
    }

    return [
      for (final group in settingsInteractor.settings.employeeGroups)
        group.copyWith(employees: [
          for (final employee in group.employees)
            if (settingsInteractor.wasEmployeeInTheCompanyAtWeek(
                employee, DateTime.now()))
              employee
        ])
    ];
  }

  void onEmployeeTap(EmployeeEntity employee) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => WeeksForEmployeePageDI(
          employee: employee,
        ),
      ),
    );
  }

  void toggleVisibilityRetited() {
    isRetiredShown = !isRetiredShown;
    notifyListeners();
  }
}
