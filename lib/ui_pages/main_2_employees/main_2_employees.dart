import 'package:chemtime/ui_pages/main_2_employees/main_2_employees_vm.dart';
import 'package:flutter/material.dart';

class Main2Employees extends StatefulWidget {
  const Main2Employees({
    required this.viewModel,
    Key? key,
  }) : super(key: key);

  final Main2EmployeesVM viewModel;

  @override
  State<Main2Employees> createState() => _Main2EmployeesState();
}

class _Main2EmployeesState extends State<Main2Employees> {
  Main2EmployeesVM get ___vm => widget.viewModel;

  @override
  void initState() {
    widget.viewModel.addListener(_vmListener);
    widget.viewModel.initVM();
    super.initState();
  }

  void _vmListener() => setState(() {});

  @override
  void dispose() {
    widget.viewModel.disposeVM();
    widget.viewModel.removeListener(_vmListener);
    super.dispose();
  }

  //

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
