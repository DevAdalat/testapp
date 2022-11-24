part of '../tdlibjson_api.dart';

class GetBasicGroup extends TdFunction {

  /// Returns information about a basic group by its identifier. This is an offline request if the current user is not a bot
  const GetBasicGroup({
    required this.basicGroupId,
  });
  
  /// [basicGroupId] Basic group identifier
  final int basicGroupId;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "basic_group_id":$basicGroupId
}
	""";
  }
  
  GetBasicGroup copyWith({
    int? basicGroupId,
  }) => GetBasicGroup(
    basicGroupId: basicGroupId ?? this.basicGroupId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getBasicGroup';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
