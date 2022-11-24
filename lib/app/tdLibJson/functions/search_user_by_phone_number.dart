part of '../tdlibjson_api.dart';

class SearchUserByPhoneNumber extends TdFunction {

  /// Searches a user by their phone number. Returns a 404 error if the user can't be found
  const SearchUserByPhoneNumber({
    required this.phoneNumber,
  });
  
  /// [phoneNumber] Phone number to search for
  final String phoneNumber;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "phone_number":"$phoneNumber"
}
	""";
  }
  
  SearchUserByPhoneNumber copyWith({
    String? phoneNumber,
  }) => SearchUserByPhoneNumber(
    phoneNumber: phoneNumber ?? this.phoneNumber,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'searchUserByPhoneNumber';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
