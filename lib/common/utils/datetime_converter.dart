import 'package:freezed_annotation/freezed_annotation.dart';

class DateTimeConverter extends JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String json) {
    // for (var format in formats) {
    //   try {
    //     return format.parse(dateTimeString, utc);
    //   } on FormatException {
    //     // Ignore.
    //   }
    // }
    final DateTime? dateTime = DateTime.tryParse(json);
    if (dateTime != null) {
      return dateTime;
    }
    throw Exception("cannot parse datetime");
  }

  @override
  String toJson(DateTime object) {
    return object.toString();
  }
}

class DateTimeNullConverter extends JsonConverter<DateTime?, String?> {
  const DateTimeNullConverter();

  @override
  DateTime? fromJson(String? json) {
    return DateTime.tryParse(json ?? "");
  }

  @override
  String? toJson(DateTime? object) {
    return object.toString();
  }
}