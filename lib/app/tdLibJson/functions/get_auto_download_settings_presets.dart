part of '../tdlibjson_api.dart';

class GetAutoDownloadSettingsPresets extends TdFunction {

  /// Returns auto-download settings presets for the current user
  const GetAutoDownloadSettingsPresets();
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  GetAutoDownloadSettingsPresets copyWith() => const GetAutoDownloadSettingsPresets();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getAutoDownloadSettingsPresets';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
