import 'package:freezed_annotation/freezed_annotation.dart';

import 'directions.dart';

class MillisecondsDatetimeNullableConverter
    implements JsonConverter<DateTime?, int?> {
  const MillisecondsDatetimeNullableConverter();

  @override
  DateTime? fromJson(int? json) =>
      json != null ? DateTime.fromMillisecondsSinceEpoch(json * 1000) : null;

  @override
  int? toJson(DateTime? object) => object?.millisecondsSinceEpoch;
}

class MultiTypeLocationNullableConverter
    implements JsonConverter<dynamic, String?> {
  const MultiTypeLocationNullableConverter();

  @override
  dynamic fromJson(String? json) {
    throw UnimplementedError();
  }

  @override
  String? toJson(dynamic data) {
    if (data is GeoCoord) {
      return '${data.latitude},${data.longitude}';
    } else if (data is String &&
        (data.startsWith('place_id:') || data.startsWith('enc:'))) {
      return data;
    } else if (data is String) {
      data = data.replaceAll(', ', ',');
      return data
          .split(' ')
          .where((dynamic _) => _.trim().isNotEmpty == true)
          .join('+');
    }
    throw UnsupportedError(
      'Unsupported type of argument: ${data.runtimeType}',
    );
  }
}

// ====== Query Converters

class AvoidTypeQueryNullableConverter
    implements JsonConverter<List<AvoidType>?, String?> {
  const AvoidTypeQueryNullableConverter();

  @override
  List<AvoidType> fromJson(String? json) {
    throw UnimplementedError();
  }

  @override
  String? toJson(List<AvoidType>? avoidTypes) {
    return avoidTypes?.map((e) => e.name).join('|');
  }
}

class BoolQueryNullableConverter
    implements JsonConverter<bool?, String?> {
  const BoolQueryNullableConverter();

  @override
  bool? fromJson(String? json) {
    throw UnimplementedError();
  }

  @override
  String? toJson(bool? value) {
    return value?.toString();
  }
}