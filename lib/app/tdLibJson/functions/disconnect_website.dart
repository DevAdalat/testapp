part of '../tdlibjson_api.dart';

class DisconnectWebsite extends TdFunction {

  /// Disconnects website from the current user's Telegram account
  const DisconnectWebsite({
    required this.websiteId,
  });
  
  /// [websiteId] Website identifier
  final int websiteId;
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
    "website_id": "$websiteId"
  }
	""";
  }
  
  DisconnectWebsite copyWith({
    int? websiteId,
  }) => DisconnectWebsite(
    websiteId: websiteId ?? this.websiteId,
  );

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'disconnectWebsite';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
