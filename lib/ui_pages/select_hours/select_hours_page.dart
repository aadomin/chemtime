import 'package:chemtime/ui_pages/select_hours/select_hours_page_vm.dart';
import 'package:flutter/material.dart';

class SelectHoursPage extends StatefulWidget {
  const SelectHoursPage({
    required this.viewModel,
    Key? key,
  }) : super(key: key);

  final SelectHoursPageVM viewModel;

  @override
  State<SelectHoursPage> createState() => _SelectHoursPageState();
}

class _SelectHoursPageState extends State<SelectHoursPage> {
  SelectHoursPageVM get ___vm => widget.viewModel;

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
      appBar: AppBar(title: const Text('hours')),
      body: Stack(
        children: [
          Positioned(
            left: 8,
            right: 8,
            top: 8,
            bottom: 0,
            child: _mainContent(),
          ),
          Positioned(
            left: 0,
            right: 0,
            height: 50,
            bottom: 0,
            child: _bottomMainButtons(),
          ),
        ],
      ),
    );
  }

  //
  //
  //

  Widget _mainContent() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 8, 40, 0),
            child: TextField(
              controller: ___vm.textController,
              textAlign: TextAlign.center,
              onChanged: ___vm.onChangeTextField,
            ),
          ),
          const SizedBox(height: 8, width: 8),
          Wrap(alignment: WrapAlignment.center, children: [
            for (int i = 1; i < 61; i++)
              _buttonHour(
                  hour: i,
                  onTap: () {
                    ___vm.onTapOnHour(i);
                  }),
          ]),
          const SizedBox(height: 100, width: 8),
        ],
      ),
    );
  }

  Widget _buttonHour({required int hour, required void Function() onTap}) {
    // Future.delayed(const Duration(microseconds: 1), () {
    //   ScaffoldMessenger.of(context).clearSnackBars();
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(
    //       content: Text(
    //         (MediaQuery.of(context).size.width / 5.0 - 2.0).toString(),
    //       ),
    //     ),
    //   );
    // });

    return SizedBox(
      //ТУТВОПРОС - че за
      width: (MediaQuery.of(context).size.width - 16) / 5.0 - 2.0,
      child: OutlinedButton(
        onPressed: onTap,
        child: SizedBox(
          height: 48,
          child: Center(
            child: Text(
              hour.toString(),
            ),
          ),
        ),
      ),
    );
  }

  //
  //
  //

  Widget _bottomMainButtons() {
    return ColoredBox(
      color: const Color(0xFFEEEEEE),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(2),
            child: OutlinedButton(
              onPressed: ___vm.onCancel,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Text('Cancel'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2),
            child: OutlinedButton(
              onPressed: ___vm.onSave,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Text('Сохранить'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
