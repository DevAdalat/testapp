part of '../tdlibjson_api.dart';

class DeleteSavedOrderInfo extends TdFunction {

  /// Deletes saved order information
  const DeleteSavedOrderInfo();
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
  }
	""";
  }
  
  DeleteSavedOrderInfo copyWith() => const DeleteSavedOrderInfo();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'deleteSavedOrderInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
