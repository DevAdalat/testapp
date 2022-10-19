part of '../tdlibjson_api.dart';

class GetDatabaseStatistics extends TdFunction {
  /// Returns database statistics
  const GetDatabaseStatistics();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
}
	""";
  }

  GetDatabaseStatistics copyWith() => const GetDatabaseStatistics();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getDatabaseStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
}
