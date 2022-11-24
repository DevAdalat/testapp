part of '../tdlibjson_api.dart';

class CreateSupergroupChat extends TdFunction {

  /// Returns an existing chat corresponding to a known supergroup or channel
  const CreateSupergroupChat({
    required this.supergroupId,
    required this.force,
  });
  
  /// [supergroupId] Supergroup or channel identifier 
  final int supergroupId;

  /// [force] Pass true to create the chat without a network request. In this case all information about the chat except its type, title and photo can be incorrect
  final bool force;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "supergroup_id":$supergroupId,
   "force":$force
}
	""";
  }
  
  CreateSupergroupChat copyWith({
    int? supergroupId,
    bool? force,
  }) => CreateSupergroupChat(
    supergroupId: supergroupId ?? this.supergroupId,
    force: force ?? this.force,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'createSupergroupChat';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
