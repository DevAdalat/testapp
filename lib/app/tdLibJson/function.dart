part of 'tdlibjson_api.dart';

// todo: considering setExtra method or like that...
abstract class TdFunction {
  const TdFunction();
  Map<String, dynamic> toJson([dynamic extra]);
  String getConstructor();
}
