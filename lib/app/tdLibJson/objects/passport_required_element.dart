part of '../tdlibjson_api.dart';

class PassportRequiredElement extends TdObject {

  /// Contains a description of the required Telegram Passport element that was requested by a service
  const PassportRequiredElement({
    required this.suitableElements,
  });
  
  /// [suitableElements] List of Telegram Passport elements any of which is enough to provide
  final List<PassportSuitableElement> suitableElements;
  
  /// Parse from a json
  factory PassportRequiredElement.fromJson(Map<String, dynamic> json) => PassportRequiredElement(
    suitableElements: List<PassportSuitableElement>.from((json['suitable_elements'] ?? []).map((item) => PassportSuitableElement.fromJson(item)).toList()),
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "suitable_elements": "${suitableElements.map((i) => i.toJson()).toList()}"
  }
	""";
  }
  
  PassportRequiredElement copyWith({
    List<PassportSuitableElement>? suitableElements,
  }) => PassportRequiredElement(
    suitableElements: suitableElements ?? this.suitableElements,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'passportRequiredElement';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
