part of '../tdlibjson_api.dart';

class GetSavedNotificationSounds extends TdFunction {

  /// Returns list of saved notification sounds. If a sound isn't in the list, then default sound needs to be used
  const GetSavedNotificationSounds();
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
  }
	""";
  }
  
  GetSavedNotificationSounds copyWith() => const GetSavedNotificationSounds();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getSavedNotificationSounds';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
