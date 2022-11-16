import 'package:dart_date/dart_date.dart';

extension Date on DateTime {
  DateTime get mondayOfThisWeek {
    Map<int, int> shiftToMonday = <int, int>{
      DateTime.monday: 0,
      DateTime.tuesday: -1,
      DateTime.wednesday: -2,
      DateTime.thursday: -3,
      DateTime.friday: -4,
      DateTime.saturday: -5,
      DateTime.sunday: -6,
    };
    return DateTime(year, month, day, hour, minute, second)
        .add(Duration(days: shiftToMonday[weekday]!));
  }

  DateTime get sundayOfThisWeek {
    Map<int, int> shiftToSunday = <int, int>{
      DateTime.monday: 6,
      DateTime.tuesday: 5,
      DateTime.wednesday: 4,
      DateTime.thursday: 3,
      DateTime.friday: 2,
      DateTime.saturday: 1,
      DateTime.sunday: 0,
    };
    return DateTime(year, month, day, hour, minute, second)
        .add(Duration(days: shiftToSunday[weekday]!));
  }

  DateTime get veryStartOfThisWeek {
    return DateTime(year, month, day, 00, 02).mondayOfThisWeek;
  }

  DateTime get veryFinishOfThisWeek {
    return DateTime(year, month, day, 23, 58).sundayOfThisWeek;
  }

  DateTime mondayBuilder(int delta) {
    return DateTime(year, month, day, hour, minute, second)
        .mondayOfThisWeek
        .add(Duration(days: 7 * delta));
  }

  DateTime sundayBuilder(int delta) {
    return DateTime(year, month, day, hour, minute, second)
        .sundayOfThisWeek
        .add(Duration(days: 7 * delta));
  }

  int get amountOfWeeksInThatYear {
    final day1 = DateTime(year, month, day, hour, minute, second);
    final firstDayInYear = DateTime(day1.year, 1, 1);
    var i = DateTime(day1.year, 1, 1);
    var result = 1;
    while (i.year == firstDayInYear.year) {
      i = i.add(const Duration(days: 7));
      result++;
    }
    return result;
  }

  bool get isThisWeekCurrent =>
      DateTime(year, month, day).veryStartOfThisWeek ==
      DateTime.now().veryStartOfThisWeek;

  bool get isThisWeekPrevious =>
      DateTime(year, month, day + 7).veryStartOfThisWeek ==
      DateTime.now().veryStartOfThisWeek;

  bool get isThisWeekNext =>
      DateTime(year, month, day - 7).veryStartOfThisWeek ==
      DateTime.now().veryStartOfThisWeek;

  String get russianDate {
    final sDay = day.toString().length == 2 ? day.toString() : '0$day';
    final sMonth = month.toString().length == 2 ? month.toString() : '0$month';
    final sYear = year.toString().substring(2, 4);
    return '$sDay.$sMonth.$sYear'; //TODO 2 знака
  }

  String get commentAboutWeek {
    final dayOfWeek = DateTime(year, month, day);
    final difference = (dayOfWeek.veryStartOfThisWeek
                .differenceInDays(DateTime.now().veryStartOfThisWeek) /
            7)
        .round();
    final stringDifference =
        (difference > 0) ? '+$differenceя' : '$differenceя';
    if (dayOfWeek.isThisWeekCurrent) {
      return '(текущая неделя)';
    } else if (dayOfWeek.isThisWeekNext) {
      return '(cледующая неделя)';
    } else if (dayOfWeek.isThisWeekPrevious) {
      return '(предыдущая неделя)';
    } else {
      return '($stringDifference неделя)';
    }
  }
}
