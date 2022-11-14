import 'package:chemtime/ui_pages/select_hours/select_hours_page.dart';
import 'package:chemtime/ui_pages/select_hours/select_hours_page_vm.dart';
import 'package:flutter/material.dart';

class SelectHoursPageDI extends StatelessWidget {
  const SelectHoursPageDI({
    required this.selectedHours,
    required this.stringShortcut,
    super.key,
  });

  final double selectedHours;
  final String stringShortcut;

  @override
  Widget build(BuildContext context) {
    return SelectHoursPage(
      viewModel: SelectHoursPageVM(
        context: context,
        selectedHours: selectedHours,
        stringShortcut: stringShortcut,
      ),
    );
  }
}
