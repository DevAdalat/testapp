part of '../tdlibjson_api.dart';

class ToggleSupergroupSignMessages extends TdFunction {

  /// Toggles whether sender signature is added to sent messages in a channel; requires can_change_info administrator right
  const ToggleSupergroupSignMessages({
    required this.supergroupId,
    required this.signMessages,
  });
  
  /// [supergroupId] Identifier of the channel 
  final int supergroupId;

  /// [signMessages] New value of sign_messages
  final bool signMessages;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "supergroup_id": "$supergroupId",
    "sign_messages": $signMessages
  }
	""";
  }
  
  ToggleSupergroupSignMessages copyWith({
    int? supergroupId,
    bool? signMessages,
  }) => ToggleSupergroupSignMessages(
    supergroupId: supergroupId ?? this.supergroupId,
    signMessages: signMessages ?? this.signMessages,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'toggleSupergroupSignMessages';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
