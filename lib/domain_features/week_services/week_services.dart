// import 'package:dart_date/dart_date.dart';
// // all static

// class DateServices {
//   static DateTime mondayOfTheWeek(DateTime day) {
//     Map<int, int> shiftToMonday = <int, int>{
//       DateTime.monday: 0,
//       DateTime.tuesday: -1,
//       DateTime.wednesday: -2,
//       DateTime.thursday: -3,
//       DateTime.friday: -4,
//       DateTime.saturday: -5,
//       DateTime.sunday: -6,
//     };
//     return day.add(Duration(days: shiftToMonday[day.weekday]!));
//   }

//   static DateTime sundayOfTheWeek(DateTime day) {
//     Map<int, int> shiftToSunday = <int, int>{
//       DateTime.monday: 6,
//       DateTime.tuesday: 5,
//       DateTime.wednesday: 4,
//       DateTime.thursday: 3,
//       DateTime.friday: 2,
//       DateTime.saturday: 1,
//       DateTime.sunday: 0,
//     };

//     return day.add(Duration(days: shiftToSunday[day.weekday]!));
//   }

//   static DateTime veryStartOfTheWeek(DateTime day) {
//     var monday = mondayOfTheWeek(day);
//     return DateTime(monday.year, monday.month, monday.day, 00, 02);
//   }

//   static DateTime veryFinishOfTheWeek(DateTime day) {
//     var sunday = sundayOfTheWeek(day);
//     return DateTime(sunday.year, sunday.month, sunday.day, 23, 58);
//   }

// //

//   @Deprecated('use dart_date')
//   static DateTime addWeeksToDay(DateTime day, int delta) {
//     return day.add(Duration(days: 7 * delta));
//   }

//   @Deprecated('use dart_date')
//   static DateTime subtractWeeksFromDay(DateTime day, int delta) {
//     day.previousWeek;
//     return day.add(Duration(days: 7 * delta));
//   }

// //

//   static DateTime mondayBuilder(DateTime day, int delta) {
//     var monday = mondayOfTheWeek(day);
//     return monday.add(Duration(days: 7 * delta));
//   }

//   static DateTime sundayBuilder(DateTime day, int delta) {
//     var sunday = sundayOfTheWeek(day);
//     return sunday.add(Duration(days: 7 * delta));
//   }

// //
//   // @Deprecated('use dart_date')
//   // static int dayNumberInThisYear(DateTime day) {
//   //   var i = DateTime(day.year, 1, 1).get;
//   //   var result = 1;
//   //   while (true) {
//   //     var iIsDay = i.month == day.month && i.day == day.day;
//   //     if (iIsDay) break;
//   //     i = i.add(const Duration(days: 1));
//   //     result++;
//   //   }
//   //   return result;
//   // }

//   // @Deprecated('use dart_date')
//   // static int weekNumberInThisYear(DateTime day) {
//   //   var i = DateTime(day.year, 1, 1);
//   //   var result = 0;
//   //   while (true) {
//   //     // start of the week or very first week
//   //     if (i.weekday == DateTime.monday || result == 0) {
//   //       result++;
//   //     }
//   //     var iIsDay = i.month == day.month && i.day == day.day;
//   //     if (iIsDay) break;
//   //     i = i.add(const Duration(days: 1));
//   //   }
//   //   return result;
//   // }

//   static int amountOfWeeksInYear(DateTime day) {
//     var firstDayInYear = DateTime(day.year, 1, 1);
//     var i = DateTime(day.year, 1, 1);
//     var result = 1;

//     while (i.year == firstDayInYear.year) {
//       i = i.add(const Duration(days: 7));
//       result++;
//     }
//     return result;
//   }

//   static bool isWeekCurrent(DateTime dayOfWeek) {
//     return dayOfWeek.getWeek == DateTime.now().getWeek;
//   }

//   static String russianDate(DateTime dateTime) {
//     final day = DateTime.now().day;
//     final month = DateTime.now().month;
//     final year = DateTime.now().year;
//     return '$day.$month.$year';
//   }
// }
