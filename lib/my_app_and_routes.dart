import 'package:chemtime/my_app_and_routes_vm.dart';
import 'package:chemtime/ui_common_things/themes.dart';
import 'package:chemtime/ui_pages/main_scaffold/main_scaffold.dart';
import 'package:flutter/material.dart';

// // ТУТМОЖНО переделать в ScreenAllMain.routeName и static const routeName = '/extractArguments';
// const String appRouteHome = '/home';
// const String appRouteFilter = '/filter';
// const String appRouteAdd = '/add';
// const String appRouteSelectCategory = '/select_category';
// const String appRouteSearch = '/search';
// const String appRouteOnboarding = '/onboarding';
// const String appRouteSplash = '/';

const String appRouteHome = '/home';

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
      initialRoute: appRouteHome,
      debugShowCheckedModeBanner: false,
      routes: {
        appRouteHome: (context) => const MyMainScaffold(),

        // appRouteFilter: (context) => const ScreenFilterDI(),
        // appRouteAdd: (context) => const ScreenAddPlaceDI(),
        // appRouteSelectCategory: (context) =>
        //     const ScreenSelectionCategoryDi(),
        // appRouteSearch: (context) => const ScreenSearchDI(),
        // appRouteOnboarding: (context) => const ScreenOnboarding(),
        // appRouteSplash: (context) => const ScreenSplashDI(),
      },
    );
  }
}
