part of '../tdlibjson.dart';

class GetSupergroupFullInfo extends TdFunction {

  /// Returns full information about a supergroup or a channel by its identifier, cached for up to 1 minute
  const GetSupergroupFullInfo({
    required this.supergroupId,
  });
  
  /// [supergroupId] Supergroup or channel identifier
  final int supergroupId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": supergroupId,
      "@extra": extra,
    };
  }
  
  GetSupergroupFullInfo copyWith({
    int? supergroupId,
  }) => GetSupergroupFullInfo(
    supergroupId: supergroupId ?? this.supergroupId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getSupergroupFullInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
