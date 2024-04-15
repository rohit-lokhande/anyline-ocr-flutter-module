import 'package:intl/intl.dart';

/// Extension containing helper methods for DateTime objects.
extension DateHelpers on DateTime {
  /// Checks if the date is today.
  bool isToday() {
    final now = DateTime.now();
    return now.day == this.day &&
        now.month == this.month &&
        now.year == this.year;
  }

  /// Checks if the date is yesterday.
  bool isYesterday() {
    final yesterday = DateTime.now().subtract(Duration(days: 1));
    return yesterday.day == this.day &&
        yesterday.month == this.month &&
        yesterday.year == this.year;
  }

  /// Formats the time in HH:mm format.
  String formatHHmm() {
    return DateFormat('HH:mm').format(this);
  }

  /// Formats the date and time in d/M/y, HH:mm format.
  String formatDMYHHmm() {
    return DateFormat('d/M/y, HH:mm').format(this);
  }
}
