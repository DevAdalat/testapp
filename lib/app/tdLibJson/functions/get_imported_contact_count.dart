part of '../tdlibjson_api.dart';

class GetImportedContactCount extends TdFunction {

  /// Returns the total number of imported contacts
  const GetImportedContactCount();
  
  
  @override
  String toJson() {
	return 
	"""
  {
     "@type": "$CONSTRUCTOR",
  }
	""";
  }
  
  GetImportedContactCount copyWith() => const GetImportedContactCount();

// ignore: constant_identifier_names	
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getImportedContactCount';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
