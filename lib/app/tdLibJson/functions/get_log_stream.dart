part of '../tdlibjson_api.dart';

class GetLogStream extends TdFunction {

  /// Returns information about currently used log stream for internal logging of TDLib. Can be called synchronously
  const GetLogStream();
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
  }
	""";
  }
  
  GetLogStream copyWith() => const GetLogStream();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getLogStream';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
