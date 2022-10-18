part of '../tdlibjson_api.dart';

class GetSupergroup extends TdFunction {

  /// Returns information about a supergroup or a channel by its identifier. This is an offline request if the current user is not a bot
  const GetSupergroup({
    required this.supergroupId,
  });
  
  /// [supergroupId] Supergroup or channel identifier
  final int supergroupId;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "supergroup_id": "$supergroupId"
  }
	""";
  }
  
  GetSupergroup copyWith({
    int? supergroupId,
  }) => GetSupergroup(
    supergroupId: supergroupId ?? this.supergroupId,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getSupergroup';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
