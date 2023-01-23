import 'package:intl/intl.dart';

class DateHelper {

  static String formatDateToApiSortTime(String data) {
    var date = DateTime.parse(data);
    var formattedDate = DateFormat("yyyy-MM-dd").format(date);

    return formattedDate;
  }
}