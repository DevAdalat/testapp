part of '../tdlibjson_api.dart';

class GetApplicationDownloadLink extends TdFunction {

  /// Returns the link for downloading official Telegram application to be used when the current user invites friends to Telegram
  const GetApplicationDownloadLink();
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
  }
	""";
  }
  
  GetApplicationDownloadLink copyWith() => const GetApplicationDownloadLink();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getApplicationDownloadLink';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
