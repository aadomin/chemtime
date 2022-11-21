import 'package:chemtime/domain_features/week_services/my_datetime_extention.dart';
import 'package:chemtime/ui_pages/main_2_employees/weeks_for_employee_page_vm.dart';
import 'package:dart_date/dart_date.dart';
import 'package:flutter/material.dart';
import 'package:infinite_listview/infinite_listview.dart';

class WeeksForEmployeePage extends StatefulWidget {
  const WeeksForEmployeePage({
    required this.viewModel,
    Key? key,
  }) : super(key: key);

  final WeeksForEmployeePageVM viewModel;

  @override
  State<WeeksForEmployeePage> createState() => _WeeksForEmployeePageState();
}

class _WeeksForEmployeePageState extends State<WeeksForEmployeePage> {
  WeeksForEmployeePageVM get ___vm => widget.viewModel;

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

  final InfiniteScrollController _infiniteController = InfiniteScrollController(
    initialScrollOffset: 0.0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: FittedBox(
            child: Column(
              children: [
                Text(___vm.title1()),
                Text(
                  ___vm.title2(),
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ),
      body: InfiniteListView.separated(
        controller: _infiniteController,
        anchor: 0.5,
        separatorBuilder: (BuildContext context, int index) =>
            const Divider(height: 2.0),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(___vm.shiftedElementTitle(index),
                style: ___vm.isShiftedWeekCurrent(index)
                    ? TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      )
                    : const TextStyle()),
            key: ValueKey(index),
            subtitle: Text(___vm.shiftedElementSubtitle(index)),
            trailing: const Icon(Icons.chevron_right),
            onTap: (() => ___vm.onListTileTap(index)),
          );
        },
      ),
    );
  }
}
