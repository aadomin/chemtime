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
    final _rows = _buildRows();
    debugPrint('###_rows###' + _rows.toString());

    return Scaffold(
        appBar: AppBar(
          title: Text(___vm.title),
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
                ___vm.employeesAndRecords.length));
  }

  List<Widget> _buildRows() {
    var result = <Widget>[];
    for (var employeeGroup in ___vm.employeesGroupsTree) {
      //
      // Title of group
      result.add(_groupTile(
        employeeGroup.groupName,
      ));

      //
      // Employees of group
      result = [
        ...result,
        for (var employee in employeeGroup.employees)
          Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  employee.name,
                ),
                const SizedBox(height: 10, width: 10),
                Builder(
                  builder: ((context) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: (___vm.employeesAndRecords[employee]!)
                          .map((e) => _recordTile(e))
                          .toList(),
                    );
                  }),
                ),
              ]),
      ];

      // _employeeTile(employee.name,
      //       ___vm.employeesAndRecords[employee] ?? <RecordEntity>[]))

    }

    return result
        .map(
          (e) => ListTile(title: e),
        )
        .toList();
  }

  Widget _groupTile(String groupName) {
    return Text(
      groupName,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    );
  }

  Widget _recordTile(RecordEntity record) {
    return Text(
      record.projectName.substring(0, 6) + ' - ' + record.hours.toString(),
      textAlign: TextAlign.end,
      style: const TextStyle(
        fontSize: 11,
      ),
    );
  }
}
