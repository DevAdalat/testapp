part of '../tdlibjson_api.dart';

class HideSuggestedAction extends TdFunction {

  /// Hides a suggested action
  const HideSuggestedAction({
    required this.action,
  });
  
  /// [action] Suggested action to hide
  final SuggestedAction action;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "action": "${action.toJson()}"
  }
	""";
  }
  
  HideSuggestedAction copyWith({
    SuggestedAction? action,
  }) => HideSuggestedAction(
    action: action ?? this.action,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'hideSuggestedAction';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
