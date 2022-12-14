part of '../tdlibjson_api.dart';

class SetAutoDownloadSettings extends TdFunction {

  /// Sets auto-download settings
  const SetAutoDownloadSettings({
    required this.settings,
    required this.type,
  });
  
  /// [settings] New user auto-download settings 
  final AutoDownloadSettings settings;

  /// [type] Type of the network for which the new settings are relevant
  final NetworkType type;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "settings":${settings.toJson()},
   "type":${type.toJson()}
}
	""";
  }
  
  SetAutoDownloadSettings copyWith({
    AutoDownloadSettings? settings,
    NetworkType? type,
  }) => SetAutoDownloadSettings(
    settings: settings ?? this.settings,
    type: type ?? this.type,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setAutoDownloadSettings';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
