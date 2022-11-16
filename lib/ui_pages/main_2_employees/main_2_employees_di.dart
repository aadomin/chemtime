import 'package:chemtime/ui_pages/main_2_employees/main_2_employees.dart';
import 'package:chemtime/ui_pages/main_2_employees/main_2_employees_vm.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class Main2EmployeesDI extends StatelessWidget {
  const Main2EmployeesDI({super.key});
  @override
  Widget build(BuildContext context) {
    return Main2Employees(
      viewModel: Main2EmployeesVM(
        context: context,
        //hardworkInteractor: context.read<DI>().hardworkInteractor,
      ),
    );
  }
}
