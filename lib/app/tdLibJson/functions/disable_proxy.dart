part of '../tdlibjson_api.dart';

class DisableProxy extends TdFunction {

  /// Disables the currently enabled proxy. Can be called before authorization
  const DisableProxy();
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  DisableProxy copyWith() => const DisableProxy();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'disableProxy';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
