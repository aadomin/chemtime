import 'package:chemtime/ui_pages/select_stake/calculator_of_stake_page_vm.dart';
import 'package:flutter/material.dart';

class CalculatorOfStakePage extends StatefulWidget {
  const CalculatorOfStakePage({
    required this.viewModel,
    Key? key,
  }) : super(key: key);

  final CalculatorOfStakeVM viewModel;

  @override
  State<CalculatorOfStakePage> createState() => _CalculatorOfStakePageState();
}

class _CalculatorOfStakePageState extends State<CalculatorOfStakePage> {
  CalculatorOfStakeVM get ___vm => widget.viewModel;

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
                                          ? Color.fromARGB(116, 101, 139, 57)
                                          : Color.fromARGB(79, 0, 0, 0),
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
                                          ? Color.fromARGB(116, 101, 139, 57)
                                          : Color.fromARGB(79, 0, 0, 0),
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
                                          ? Color.fromARGB(116, 101, 139, 57)
                                          : Color.fromARGB(79, 0, 0, 0),
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
                    Builder(builder: (context) {
                      //ТУТВОПРОС стоит избегать присвоения виджета?
                      var text = 'От ${___vm.selectedDaysAmount} дней ';
                      text +=
                          '${___vm.firstLineSelectedElement}/${___vm.secondLineSelectedElement}';
                      text += 'доля равна ${___vm.resultHoursRounded} часам';
                      return Text(text);
                    })
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
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                          child: Text('Отмена'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: OutlinedButton(
                      onPressed: ___vm.onSave,
                      //ТУТВОПРОС
                      child: const ColoredBox(
                        color: Color.fromARGB(21, 101, 139, 57),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                          child: Text('Сохранить'),
                        ),
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
