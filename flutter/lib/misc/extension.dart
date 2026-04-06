extension StringExtensions on String? {
  bool isBlank() {
    return this == null || this!.trim().isEmpty;
  }

  bool verifyPhone() {
    if (this == null) return false;
    String phone = this!.trim().replaceAll(' - ', '');
    return !(int.tryParse(phone) == null || phone.length < 10 || phone.length > 12);
  }
}

extension DateTimeExtension on DateTime {
  DateTime next(int day) {
    return this.add(
      Duration(days: (day - this.weekday + 7) % 7),
    );
  }

  String nextDateString(int day) {
    return this.next(day).toString().substring(0, 10).replaceAll('-', '/');
  }
}