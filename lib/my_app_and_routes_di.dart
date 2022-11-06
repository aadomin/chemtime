import 'package:chemtime/my_app_and_routes.dart';
import 'package:chemtime/my_app_and_routes_vm.dart';
import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

class MyAppAndRoutesDI extends StatelessWidget {
  const MyAppAndRoutesDI({super.key});
  @override
  Widget build(BuildContext context) {
    return MyAppAndRoutes(
      viewModel: MyAppAndRoutesVM(
        context: context,
        // settingsInteractor: context.read<DI>().settingsInteractor,
      ),
    );
  }
}
