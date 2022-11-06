import 'package:dart_date/dart_date.dart';
import 'package:chemtime/domain_features/week_services/my_datetime_extention.dart';
import 'package:chemtime/domain_entities/employee/employee_entity.dart';
import 'package:chemtime/domain_entities/project/project_entity.dart';
import 'package:chemtime/domain_entities/settings/settings_entity.dart';
import 'package:chemtime/domain_features/settings/settings_repository.dart';
import 'package:flutter/material.dart';

class SettingsInteractor with ChangeNotifier {
  SettingsInteractor({required this.settingsRepository});

  late final SettingsRepository settingsRepository;

  //

  late SettingsEntity settings;

  void initInteractor() {
    settings = settingsRepository.loadSetting();
  }

  Future<SettingsEntity> loadSettingsFromFile(String pathToFile) {
    throw 'not implemented';
  }

  Future<void> saveSettingsToFile(SettingsEntity settings) {
    throw 'not implemented';
  }

  //

  ProjectEntity? getProject(String projectName) {
    for (final project in settings.projects) {
      if (project.name == projectName) {
        return project;
      }
    }
    return null; // not found
  }

  List<ProjectEntity> findProjects(String searchText) {
    //ignore: avoid_init_to_null
    List<ProjectEntity>? result = <ProjectEntity>[];
    for (final project in settings.projects) {
      if (project.name == searchText) {
        //TODO добавить условие поиска
        result.add(project);
      }
    }
    return result; // not found
  }

  //

  List<EmployeeEntity> get listOfAllEmployees {
    var result = <EmployeeEntity>[];
    for (var groups in settings.employeeGroups) {
      for (var employee in groups.employees) {
        result.add(employee);
      }
    }
    return result;
  }

  bool wasEmployeeInTheCompanyAtWeek(
    EmployeeEntity employee,
    DateTime dayOfWeek,
  ) {
    bool result = false;
    for (var period in employee.periodsOfWork) {
      //start correspond to the end, and finish to the beginning !
      if (period.dateOfHire <= dayOfWeek.veryFinishOfThisWeek &&
          period.dateOfRetire >= dayOfWeek.veryStartOfThisWeek) {
        result = true;
      }
    }
    return result;
  }

  List<EmployeeEntity> getEmployeesWhoWasInTheCompanyAtWeek(
      DateTime dayOfWeek) {
    var result = <EmployeeEntity>[];
    for (var employee in listOfAllEmployees) {
      if (wasEmployeeInTheCompanyAtWeek(employee, dayOfWeek)) {
        result.add(employee);
      }
    }
    return result;
  }
}
