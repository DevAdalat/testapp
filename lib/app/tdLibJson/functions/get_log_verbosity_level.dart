part of '../tdlibjson_api.dart';

class GetLogVerbosityLevel extends TdFunction {

  /// Returns current verbosity level of the internal logging of TDLib. Can be called synchronously
  const GetLogVerbosityLevel();
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  GetLogVerbosityLevel copyWith() => const GetLogVerbosityLevel();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getLogVerbosityLevel';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
