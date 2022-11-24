part of '../tdlibjson_api.dart';

class ResetNetworkStatistics extends TdFunction {

  /// Resets all network data usage statistics to zero. Can be called before authorization
  const ResetNetworkStatistics();
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  ResetNetworkStatistics copyWith() => const ResetNetworkStatistics();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'resetNetworkStatistics';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
