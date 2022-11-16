import 'package:dart_date/dart_date.dart';
import 'package:chemtime/domain_features/week_services/my_datetime_extention.dart';
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
        title: Column(
          children: [
            const Text('Данные по неделям'),
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
        var text =
            '${___vm.shiftedMonday(index).russianDate} - ${___vm.shiftedSunday(index).russianDate}';
        text += ', #$index, ${___vm.shiftedWeekNumber(index)}';
        var isThatCurrentWeek =
            ___vm.shiftedMonday(index).getWeek == DateTime.now().getWeek;
        var isThatPreviousWeek =
            ___vm.shiftedMonday(index).getWeek == DateTime.now().getWeek - 1;
        var isThatNextWeek =
            ___vm.shiftedMonday(index).getWeek == DateTime.now().getWeek + 1;
        var isThatWeekInFuture =
            ___vm.shiftedMonday(index) > DateTime.now().mondayOfThisWeek;

        if (isThatCurrentWeek) text += ' (текущая)';
        if (isThatPreviousWeek) text += ' (предыдущая)';
        if (isThatNextWeek) text += ' (следующая)';

        return Material(
          child: InkWell(
            child: ListTile(
              title: Text(text,
                  style: isThatCurrentWeek
                      ? const TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                        )
                      : const TextStyle()),
              subtitle: isThatWeekInFuture
                  ? const SizedBox.shrink()
                  : Text(
                      'без отчетов: ${___vm.getNotFilledEmployeesAtWeek(index)}'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                ___vm.onTapOnTile(___vm.shiftedMonday(index));
              },
            ),
          ),
        );
      },
    );
  }
}
