import 'package:chemtime/domain_entities/employee/employee_entity.dart';
import 'package:chemtime/domain_features/week_services/my_datetime_extention.dart';
import 'package:chemtime/ui_common_widgets/widget_group_tile.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Column(
            children: [
              const Text('Данные по работникам'),
              Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Text(
                  ___vm.title(),
                  style: const TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: ___vm.isRetiredShown
                ? const Icon(Icons.remove_red_eye)
                : const Icon(Icons.remove_red_eye_outlined),
            onPressed: ___vm.toggleVisibilityRetited,
          ),
        ],
      ),
      body: ListView(
        children: _buildList(),
      ),
    );
  }

  List<Widget> _buildList() {
    List<Widget> result = <Widget>[];
    //
    // Groups
    for (var employeeGroup in ___vm.shownEmployeesGroups) {
      //
      // Title of group
      result.add(
        WidgetGroupTile(
          groupName: employeeGroup.groupName,
          key: ObjectKey(employeeGroup),
        ),
      );

      //
      // Employees of group
      for (var employee in employeeGroup.employees) {
        result.add(
          _WidgetEmployeeTile(
            employee: employee,
            key: ObjectKey(employee),
            onTap: () => ___vm.onEmployeeTap(employee),
          ),
        );
      }
    }
    return result;
  }
}

class _WidgetEmployeeTile extends StatelessWidget {
  const _WidgetEmployeeTile({
    required this.employee,
    required this.onTap,
    super.key,
  });

  final EmployeeEntity employee;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
      title: Text(employee.name),
      subtitle: Wrap(
        children: (employee.periodsOfWork)
            .map(
              (e) => Text(
                  '${e.dateOfHire.russianDate}-${e.dateOfRetire.russianDate}   '),
            )
            .toList(),
      ),
    );
  }
}
