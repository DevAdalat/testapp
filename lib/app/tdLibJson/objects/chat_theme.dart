part of '../tdlibjson_api.dart';

class ChatTheme extends TdObject {

  /// Describes a chat theme
  const ChatTheme({
    required this.name,
    required this.lightSettings,
    required this.darkSettings,
  });
  
  /// [name] Theme name
  final String name;

  /// [lightSettings] Theme settings for a light chat theme
  final ThemeSettings lightSettings;

  /// [darkSettings] Theme settings for a dark chat theme
  final ThemeSettings darkSettings;
  
  /// Parse from a json
  factory ChatTheme.fromJson(Map<String, dynamic> json) => ChatTheme(
    name: json['name'],
    lightSettings: ThemeSettings.fromJson(json['light_settings']),
    darkSettings: ThemeSettings.fromJson(json['dark_settings']),
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "name": "$name",
    "light_settings": "${lightSettings.toJson()}",
    "dark_settings": "${darkSettings.toJson()}"
  }
	""";
  }
  
  ChatTheme copyWith({
    String? name,
    ThemeSettings? lightSettings,
    ThemeSettings? darkSettings,
  }) => ChatTheme(
    name: name ?? this.name,
    lightSettings: lightSettings ?? this.lightSettings,
    darkSettings: darkSettings ?? this.darkSettings,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'chatTheme';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
