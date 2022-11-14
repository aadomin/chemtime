import 'package:chemtime/domain_entities/employee/employee_entity.dart';
import 'package:chemtime/domain_entities/record/record_entity.dart';
import 'package:chemtime/ui_pages/main_1_weeks/employees_of_week_page_vm.dart';
import 'package:flutter/material.dart';

class EmployeesOfWeekPage extends StatefulWidget {
  const EmployeesOfWeekPage({
    required this.viewModel,
    Key? key,
  }) : super(key: key);

  final EmployeesOfWeekPageVM viewModel;

  @override
  State<EmployeesOfWeekPage> createState() => _EmployeesOfWeekPageState();
}

class _EmployeesOfWeekPageState extends State<EmployeesOfWeekPage> {
  EmployeesOfWeekPageVM get ___vm => widget.viewModel;

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

  @override
  Widget build(BuildContext context) {
    //
    final _rows = _buildRows();

    return Scaffold(
      appBar: AppBar(
        title: FittedBox(
          child: Text(___vm.title),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_circle_left_outlined),
            onPressed: ___vm.onPreviousWeek,
          ),
          IconButton(
            icon: const Icon(Icons.arrow_circle_right_outlined),
            onPressed: ___vm.onNextWeek,
          ),
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return _rows[index];
          },
          separatorBuilder: (_, __) => const Divider(height: 2.0),
          itemCount: ___vm.employeesGroupsTree.length +
              ___vm.employeesAndRecords.length),
    );
  }

  //ТУТВОПРОС - потому что функцией как обратиться по индексу?
  List<Widget> _buildRows() {
    var result = <Widget>[];

    //
    // Groups
    for (var employeeGroup in ___vm.employeesGroupsTree) {
      //
      // Title of group
      result.add(
        ListTile(
          key: ObjectKey(employeeGroup),
          title: _WidgetGroupTile(
            groupName: employeeGroup.groupName,
          ),
        ),
      );

      //
      // Employees of group
      for (var employee in employeeGroup.employees) {
        result.add(
          //ТУТВОПРОС наследники
          _WidgetEmployeeTile(
            employee: employee,
            listOfRecords: ___vm.employeesAndRecords[employee]!,
            onTap: () {
              ___vm.onEmployeeTap(employee);
            },
          ),
        );
      }
    }

    return result;
  }
}

class _WidgetGroupTile extends StatelessWidget {
  const _WidgetGroupTile({required this.groupName, super.key});

  final String groupName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      key: Key(groupName),
      title: Text(
        groupName,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
    );
  }
}

class _WidgetEmployeeTile extends StatelessWidget {
  const _WidgetEmployeeTile({
    required this.employee,
    required this.listOfRecords,
    required this.onTap,
    super.key,
  });

  final EmployeeEntity employee;
  final List<RecordEntity> listOfRecords;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      key: ObjectKey(employee),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
      title: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(employee.name),
          const SizedBox(height: 10, width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: (listOfRecords)
                .map(
                  (e) => _WidgetRecordElement(
                      recordStringShortcut: e.stringShortcut,
                      recordHours: e.hours.toString()),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class _WidgetRecordElement extends StatelessWidget {
  const _WidgetRecordElement({
    required this.recordStringShortcut,
    required this.recordHours,
    super.key,
  });

  final String recordStringShortcut;
  final String recordHours;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$recordStringShortcut - $recordHours',
      key: Key('$recordStringShortcut - $recordHours'), //ТУТВОПРОС
      textAlign: TextAlign.end,
      style: const TextStyle(
        fontSize: 11,
      ),
    );
  }
}
