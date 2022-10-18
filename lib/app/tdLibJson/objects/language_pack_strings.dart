part of '../tdlibjson_api.dart';

class LanguagePackStrings extends TdObject {

  /// Contains a list of language pack strings
  const LanguagePackStrings({
    required this.strings,
    this.extra,
    this.clientId,
  });
  
  /// [strings] A list of language pack strings
  final List<LanguagePackString> strings;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory LanguagePackStrings.fromJson(Map<String, dynamic> json) => LanguagePackStrings(
    strings: List<LanguagePackString>.from((json['strings'] ?? []).map((item) => LanguagePackString.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "strings": "${strings.map((i) => i.toJson()).toList()}"
  }
	""";
  }
  
  LanguagePackStrings copyWith({
    List<LanguagePackString>? strings,
    dynamic extra,
    int? clientId,
  }) => LanguagePackStrings(
    strings: strings ?? this.strings,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'languagePackStrings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
