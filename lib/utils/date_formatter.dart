class DateFormatter {
  static String formatDateTime(DateTime dt) {
    String y = dt.year.toString().padLeft(4, '0');
    String m = dt.month.toString().padLeft(2, '0');
    String d = dt.day.toString().padLeft(2, '0');
    String h = dt.hour.toString().padLeft(2, '0');
    String min = dt.minute.toString().padLeft(2, '0');
    String s = dt.second.toString().padLeft(2, '0');
    String ms = dt.millisecond.toString().padLeft(3, '0');
    return '$y-$m-${d}T$h:$min:${s}.$ms';
  }
}