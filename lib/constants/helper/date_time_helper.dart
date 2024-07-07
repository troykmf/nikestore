// import 'package:intl/intl.dart';

// String dateConverter(String myDate) {
//   String date;
//   final convertedDate = DateFormat("dd/MM/yyyy");

//   final now = DateTime.now();
//   final today = DateTime(now.year, now.month, now.day);
//   final yesterday = DateTime(now.year, now.month, now.day - 1);
//   final tomorrow = DateTime(now.year, now.month, now.day + 1);

//   final dateToCheck = convertedDate;
//   final checkDate =
//       DateTime(dateToCheck.year, dateToCheck.month, dateToCheck.day);
//   if (checkDate == today) {
//     date = 'Today';
//     print(date);
//   } else if (checkDate == yesterday) {
//     date = 'Yesterday';
//     print(date);
//   } else if (checkDate == tomorrow) {
//     date = 'Tomorrow';
//     print('date');
//   } else {
//     date = myDate;
//   }
//   return date;
// }

// extension DateHelpers on DateTime {
//   bool get isToday {
//     final now = DateTime.now();
//     return now.day == day && now.month == month && now.year == year;
//   }

//   bool get isYesterday {
//     final yesterday = DateTime.now().subtract(const Duration(days: 1));
//     return yesterday.day == day &&
//         yesterday.month == month &&
//         yesterday.year == year;
//   }
// }

String checkDate(String dateString) {
  //  example, dateString = "2020-01-26";

  DateTime checkedTime = DateTime.parse(dateString);
  DateTime currentTime = DateTime.now();

  if ((currentTime.year == checkedTime.year) &&
      (currentTime.month == checkedTime.month) &&
      (currentTime.day == checkedTime.day)) {
    return "Recent";
  } else if ((currentTime.year == checkedTime.year) &&
      (currentTime.month == checkedTime.month)) {
    if ((currentTime.day - checkedTime.day) == 1) {
      return "YESTERDAY";
    } else if ((currentTime.day - checkedTime.day) == -1) {
      return "TOMORROW";
    } else {
      return dateString;
    }
  }
  return dateString;
}
