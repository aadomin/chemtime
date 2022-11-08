import 'package:chemtime/ui_pages/main_1_weeks/employees_of_week_page_di.dart';
import 'package:chemtime/ui_pages/main_1_weeks/main_1_weeks_page_di.dart';
import 'package:flutter/material.dart';

class MyMainScaffold extends StatefulWidget {
  const MyMainScaffold({super.key});

  static String get route => '/home';

  @override
  State<MyMainScaffold> createState() => _MyMainScaffoldState();
}

class _MyMainScaffoldState extends State<MyMainScaffold> {
  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        (() => const Main1WeeksPageDI()).call(),
        (() => const EmployeesOfWeekPageDI()).call(),
        (() => const Center()).call(),
        (() => const Center()).call(),
        (() => const Center()).call(),
      ][selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, //for normal color
        onTap: _onTap,
        currentIndex: selectedPage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.access_time,
            ),
            label: 'Недели',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
            ),
            label: 'Люди',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assessment,
            ),
            label: 'Отчеты 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assignment_ind,
            ),
            label: 'Отчеты 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            label: 'Настойки',
          ),
        ],
      ),
    );
  }

  void _onTap(int value) {
    selectedPage = value;
    setState(() {});
  }
}
