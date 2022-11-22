import 'package:chemtime/ui_pages/select_stake/select_stake_page.dart';
import 'package:chemtime/ui_pages/select_stake/select_stake_page_vm.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class SelectStakePageDI extends StatelessWidget {
  const SelectStakePageDI({super.key});
  @override
  Widget build(BuildContext context) {
    return SelectStakePage(
      viewModel: SelectStakePageVM(
        context: context,
        //hardworkInteractor: context.read<DI>().hardworkInteractor,
      ),
    );
  }
}
