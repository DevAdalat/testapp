part of '../tdlibjson_api.dart';

class GetBasicGroup extends TdFunction {
  /// Returns information about a basic group by its identifier. This is an offline request if the current user is not a bot
  const GetBasicGroup({
    required this.basicGroupId,
  });

  /// [basicGroupId] Basic group identifier
  final int basicGroupId;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "basic_group_id": basicGroupId,
      "@extra": extra,
    };
  }

  GetBasicGroup copyWith({
    int? basicGroupId,
  }) =>
      GetBasicGroup(
        basicGroupId: basicGroupId ?? this.basicGroupId,
      );

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getBasicGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}
