part of '../tdlibjson_api.dart';

class GetBasicGroupFullInfo extends TdFunction {
  /// Returns full information about a basic group by its identifier
  const GetBasicGroupFullInfo({
    required this.basicGroupId,
  });

  /// [basicGroupId] Basic group identifier
  final int basicGroupId;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "basic_group_id":$basicGroupId
}
	""";
  }

  GetBasicGroupFullInfo copyWith({
    int? basicGroupId,
  }) =>
      GetBasicGroupFullInfo(
        basicGroupId: basicGroupId ?? this.basicGroupId,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getBasicGroupFullInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
