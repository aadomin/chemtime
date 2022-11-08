import 'package:chemtime/di.dart';
import 'package:chemtime/ui_pages/main_1_weeks/employees_of_week_page.dart';
import 'package:chemtime/ui_pages/main_1_weeks/employees_of_week_page_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EmployeesOfWeekPageDI extends StatelessWidget {
  const EmployeesOfWeekPageDI({super.key});

  static String get route => '/weeks-employees';

  @override
  Widget build(BuildContext context) {
    return EmployeesOfWeekPage(
      viewModel: EmployeesOfWeekPageVM(
        context: context,
        recordsInteractor: context.read<DI>().recordsInteractor,
        settingsInteractor: context.read<DI>().settingsInteractor,
      ),
    );
  }
}
