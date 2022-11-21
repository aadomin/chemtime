import 'package:chemtime/di.dart';
import 'package:chemtime/domain_entities/employee/employee_entity.dart';
import 'package:chemtime/ui_pages/details/details_page.dart';
import 'package:chemtime/ui_pages/details/details_page_vm.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class DetailsPageDI extends StatelessWidget {
  const DetailsPageDI({
    required this.selectedDayOfWeek,
    required this.employee,
    super.key,
  });

  final DateTime selectedDayOfWeek;
  final EmployeeEntity employee;

  @override
  Widget build(BuildContext context) {
    return DetailsPage(
      viewModel: DetailsPageVM(
        context: context,
        settingsInteractor: context.read<DI>().settingsInteractor,
        recordsInteractor: context.read<DI>().recordsInteractor,
        authInteractor: context.read<DI>().authInteractor,
        selectedDayOfWeek: selectedDayOfWeek,
        employee: employee,
      ),
    );
  }
}
