import 'package:chemtime/di.dart';
import 'package:chemtime/domain_entities/employee/employee_entity.dart';
import 'package:chemtime/ui_pages/main_2_employees/weeks_for_employee_page.dart';
import 'package:chemtime/ui_pages/main_2_employees/weeks_for_employee_page_vm.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class WeeksForEmployeePageDI extends StatelessWidget {
  const WeeksForEmployeePageDI({required this.employee, super.key});
  final EmployeeEntity employee;
  @override
  Widget build(BuildContext context) {
    return WeeksForEmployeePage(
      viewModel: WeeksForEmployeePageVM(
        context: context,
        employee: employee,
        recordsInteractor: context.read<DI>().recordsInteractor,
        settingsInteractor: context.read<DI>().settingsInteractor,
      ),
    );
  }
}
