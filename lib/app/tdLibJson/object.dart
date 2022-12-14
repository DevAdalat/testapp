part of 'tdlibjson_api.dart';

abstract class TdObject<T> {
  /// callback sign
  dynamic get extra => null;

  /// client identifier
  int? get clientId => null;

  const TdObject();
  TdObject.fromJson(Map<String, dynamic> json);
  String toJson();
  String getConstructor();
}
