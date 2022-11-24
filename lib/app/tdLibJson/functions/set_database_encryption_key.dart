part of '../tdlibjson_api.dart';

class SetDatabaseEncryptionKey extends TdFunction {

  /// Changes the database encryption key. Usually the encryption key is never changed and is stored in some OS keychain
  const SetDatabaseEncryptionKey({
    required this.newEncryptionKey,
  });
  
  /// [newEncryptionKey] New encryption key
  final String newEncryptionKey;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "new_encryption_key":"$newEncryptionKey"
}
	""";
  }
  
  SetDatabaseEncryptionKey copyWith({
    String? newEncryptionKey,
  }) => SetDatabaseEncryptionKey(
    newEncryptionKey: newEncryptionKey ?? this.newEncryptionKey,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setDatabaseEncryptionKey';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
