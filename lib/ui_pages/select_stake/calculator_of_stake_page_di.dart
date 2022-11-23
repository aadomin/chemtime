import 'package:chemtime/ui_pages/select_stake/calculator_of_stake_page.dart';
import 'package:chemtime/ui_pages/select_stake/calculator_of_stake_page_vm.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class CalculatorOfStakeDI extends StatelessWidget {
  const CalculatorOfStakeDI({super.key});
  @override
  Widget build(BuildContext context) {
    return CalculatorOfStakePage(
      viewModel: CalculatorOfStakeVM(
        context: context,
        //hardworkInteractor: context.read<DI>().hardworkInteractor,
      ),
    );
  }
}
