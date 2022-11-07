import 'package:infinite_listview/infinite_listview.dart';
import 'package:chemtime/ui_pages/main_1_weeks/main_1_weeks_page_vm.dart';
import 'package:flutter/material.dart';

class Main1WeeksPage extends StatefulWidget {
  const Main1WeeksPage({
    required this.viewModel,
    Key? key,
  }) : super(key: key);

  final Main1WeeksPageVM viewModel;

  @override
  State<Main1WeeksPage> createState() => _Main1WeeksPageState();
}

class _Main1WeeksPageState extends State<Main1WeeksPage> {
  Main1WeeksPageVM get ___vm => widget.viewModel;

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
    return Scaffold(
      appBar: AppBar(
        title: Text(___vm.title()),
      ),
      body: _buildList(),
    );
  }

  final InfiniteScrollController _infiniteController = InfiniteScrollController(
    initialScrollOffset: 0.0,
  );

  Widget _buildList() {
    return InfiniteListView.separated(
      //key: PageStorageKey(1), //TODO вау!!!
      controller: _infiniteController,
      anchor: 0.5,
      separatorBuilder: (BuildContext context, int index) =>
          const Divider(height: 2.0),
      itemBuilder: (BuildContext context, int index) {
        return Material(
          child: InkWell(
            onTap: () {},
            child: ListTile(
              title: Text(
                  '#$index, ${___vm.shiftedWeekNumber(index)}, ${___vm.shiftedMonday(index)} - ${___vm.shiftedSunday(index)}'),
              subtitle:
                  Text('без отчетов: ${___vm.getNotFilledEmployeesAtWeek(index)}'),
              trailing: const Icon(Icons.chevron_right),
            ),
          ),
        );
      },
    );
  }
}
