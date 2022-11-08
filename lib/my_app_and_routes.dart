import 'package:chemtime/my_app_and_routes_vm.dart';
import 'package:chemtime/ui_common_things/themes.dart';
import 'package:chemtime/ui_pages/main_1_weeks/employees_of_week_page_di.dart';
import 'package:chemtime/ui_pages/main_scaffold/main_scaffold.dart';
import 'package:flutter/material.dart';

///
/// Routes and MaterialApp widget
///
class MyAppAndRoutes extends StatefulWidget {
  const MyAppAndRoutes({required this.viewModel, Key? key}) : super(key: key);

  final MyAppAndRoutesVM viewModel;

  @override
  State<MyAppAndRoutes> createState() => _MyAppAndRoutesState();
}

class _MyAppAndRoutesState extends State<MyAppAndRoutes> {
  MyAppAndRoutesVM get ___vm => widget.viewModel;

  @override
  void initState() {
    super.initState();
    ___vm
      ..addListener(_vmListener)
      ..initVM();
  }

  void _vmListener() => setState(() {});

  @override
  void dispose() {
    ___vm
      ..disposeVM()
      ..removeListener(_vmListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chemtime',
      theme: lightTheme,
      darkTheme: darkTheme,
      // themeMode: snapshot.data == true ? ThemeMode.dark : ThemeMode.light,
      initialRoute: MyMainScaffold.route,
      debugShowCheckedModeBanner: false,
      routes: {
        MyMainScaffold.route: (context) => const MyMainScaffold(),
        EmployeesOfWeekPageDI.route: (context) => const EmployeesOfWeekPageDI(),
        //
        //
        //
      },
    );
  }
}
