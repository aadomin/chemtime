import 'package:chemtime/ui_pages/select_stake/select_stake_page_vm.dart';
import 'package:flutter/material.dart';

class SelectStakePage extends StatefulWidget {
  const SelectStakePage({
    required this.viewModel,
    Key? key,
  }) : super(key: key);

  final SelectStakePageVM viewModel;

  @override
  State<SelectStakePage> createState() => _SelectStakePageState();
}

class _SelectStakePageState extends State<SelectStakePage> {
  SelectStakePageVM get ___vm => widget.viewModel;

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
      appBar: AppBar(title: const Text('Выбрать долю от рабочей недели')),
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    //
                    //    D A Y S
                    //
                    const Text('Отметьте количество рабочих дней:'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        for (final item in ___vm.selectedDays.entries)
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: SizedBox(
                                height: 48,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6),
                                  child: InkWell(
                                    child: ColoredBox(
                                      color: item.value
                                          ? Colors.lightGreen
                                          : Colors.grey,
                                      child: Center(
                                        child: Text(item.key),
                                      ),
                                    ),
                                    onTap: () {
                                      ___vm.onToggleSelectionOfTheDay(item.key);
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    //
                    //     S T A K E S   FIRST LINE
                    //
                    const Text('Выберите долю. Числитель:'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        for (final i in ___vm.firstLine.keys)
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: SizedBox(
                                height: 48,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6),
                                  child: InkWell(
                                    child: ColoredBox(
                                      color: ___vm.firstLine[i]!
                                          ? Colors.lightGreen
                                          : Colors.grey,
                                      child: Center(
                                        child: Text(i.toString()),
                                      ),
                                    ),
                                    onTap: () {
                                      ___vm.onToggleOnFirstLineElement(i);
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                    //
                    //     S T A K E S   SECOND LINE
                    //
                    const Text('Знаменатель:'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        for (final i in ___vm.secondLine.keys)
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: SizedBox(
                                height: 48,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6),
                                  child: InkWell(
                                    child: ColoredBox(
                                      color: ___vm.secondLine[i]!
                                          ? Colors.lightGreen
                                          : Colors.grey,
                                      child: Center(
                                        child: Text(i.toString()),
                                      ),
                                    ),
                                    onTap: () {
                                      ___vm.onToggleOnSecondLineElement(i);
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    const Divider(),
                    Text(
                        ' ${___vm.firstLineSelectedElement}/${___vm.secondLineSelectedElement} от ${___vm.selectedDaysAmount} будет ${___vm.resultHours}')
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            height: 50,
            bottom: 0,
            child: ColoredBox(
              color: const Color(0xFFEEEEEE),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: OutlinedButton(
                      onPressed: ___vm.onCancel,
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        child: Text('Cancel'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: OutlinedButton(
                      onPressed: ___vm.onSave,
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        child: Text('Сохранить'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
