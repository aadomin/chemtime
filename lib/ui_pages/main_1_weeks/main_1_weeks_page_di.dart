import 'package:chemtime/di.dart';
import 'package:chemtime/ui_pages/main_1_weeks/main_1_weeks_page.dart';
import 'package:chemtime/ui_pages/main_1_weeks/main_1_weeks_page_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Main1WeeksPageDI extends StatelessWidget {
  const Main1WeeksPageDI({super.key});
  @override
  Widget build(BuildContext context) {
    return Main1WeeksPage(
      viewModel: Main1WeeksPageVM(
        context: context,
        recordsInteractor: context.read<DI>().recordsInteractor,
      ),
    );
  }
}
