part of '../tdlibjson.dart';

class PassportElementType extends TdObject {

  /// Contains the type of a Telegram Passport element
  const PassportElementType();
  
  /// a PassportElementType return type can be :
  /// * [PassportElementTypePersonalDetails]
  /// * [PassportElementTypePassport]
  /// * [PassportElementTypeDriverLicense]
  /// * [PassportElementTypeIdentityCard]
  /// * [PassportElementTypeInternalPassport]
  /// * [PassportElementTypeAddress]
  /// * [PassportElementTypeUtilityBill]
  /// * [PassportElementTypeBankStatement]
  /// * [PassportElementTypeRentalAgreement]
  /// * [PassportElementTypePassportRegistration]
  /// * [PassportElementTypeTemporaryRegistration]
  /// * [PassportElementTypePhoneNumber]
  /// * [PassportElementTypeEmailAddress]
  factory PassportElementType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PassportElementTypePersonalDetails.CONSTRUCTOR:
        return PassportElementTypePersonalDetails.fromJson(json);
      case PassportElementTypePassport.CONSTRUCTOR:
        return PassportElementTypePassport.fromJson(json);
      case PassportElementTypeDriverLicense.CONSTRUCTOR:
        return PassportElementTypeDriverLicense.fromJson(json);
      case PassportElementTypeIdentityCard.CONSTRUCTOR:
        return PassportElementTypeIdentityCard.fromJson(json);
      case PassportElementTypeInternalPassport.CONSTRUCTOR:
        return PassportElementTypeInternalPassport.fromJson(json);
      case PassportElementTypeAddress.CONSTRUCTOR:
        return PassportElementTypeAddress.fromJson(json);
      case PassportElementTypeUtilityBill.CONSTRUCTOR:
        return PassportElementTypeUtilityBill.fromJson(json);
      case PassportElementTypeBankStatement.CONSTRUCTOR:
        return PassportElementTypeBankStatement.fromJson(json);
      case PassportElementTypeRentalAgreement.CONSTRUCTOR:
        return PassportElementTypeRentalAgreement.fromJson(json);
      case PassportElementTypePassportRegistration.CONSTRUCTOR:
        return PassportElementTypePassportRegistration.fromJson(json);
      case PassportElementTypeTemporaryRegistration.CONSTRUCTOR:
        return PassportElementTypeTemporaryRegistration.fromJson(json);
      case PassportElementTypePhoneNumber.CONSTRUCTOR:
        return PassportElementTypePhoneNumber.fromJson(json);
      case PassportElementTypeEmailAddress.CONSTRUCTOR:
        return PassportElementTypeEmailAddress.fromJson(json);
      default:
        return const PassportElementType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  PassportElementType copyWith() => const PassportElementType();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'passportElementType';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementTypePersonalDetails extends PassportElementType {

  /// A Telegram Passport element containing the user's personal details
  const PassportElementTypePersonalDetails();
  
  /// Parse from a json
  factory PassportElementTypePersonalDetails.fromJson(Map<String, dynamic> json) => const PassportElementTypePersonalDetails();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PassportElementTypePersonalDetails copyWith() => const PassportElementTypePersonalDetails();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'passportElementTypePersonalDetails';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementTypePassport extends PassportElementType {

  /// A Telegram Passport element containing the user's passport
  const PassportElementTypePassport();
  
  /// Parse from a json
  factory PassportElementTypePassport.fromJson(Map<String, dynamic> json) => const PassportElementTypePassport();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PassportElementTypePassport copyWith() => const PassportElementTypePassport();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'passportElementTypePassport';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementTypeDriverLicense extends PassportElementType {

  /// A Telegram Passport element containing the user's driver license
  const PassportElementTypeDriverLicense();
  
  /// Parse from a json
  factory PassportElementTypeDriverLicense.fromJson(Map<String, dynamic> json) => const PassportElementTypeDriverLicense();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PassportElementTypeDriverLicense copyWith() => const PassportElementTypeDriverLicense();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'passportElementTypeDriverLicense';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementTypeIdentityCard extends PassportElementType {

  /// A Telegram Passport element containing the user's identity card
  const PassportElementTypeIdentityCard();
  
  /// Parse from a json
  factory PassportElementTypeIdentityCard.fromJson(Map<String, dynamic> json) => const PassportElementTypeIdentityCard();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PassportElementTypeIdentityCard copyWith() => const PassportElementTypeIdentityCard();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'passportElementTypeIdentityCard';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementTypeInternalPassport extends PassportElementType {

  /// A Telegram Passport element containing the user's internal passport
  const PassportElementTypeInternalPassport();
  
  /// Parse from a json
  factory PassportElementTypeInternalPassport.fromJson(Map<String, dynamic> json) => const PassportElementTypeInternalPassport();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PassportElementTypeInternalPassport copyWith() => const PassportElementTypeInternalPassport();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'passportElementTypeInternalPassport';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementTypeAddress extends PassportElementType {

  /// A Telegram Passport element containing the user's address
  const PassportElementTypeAddress();
  
  /// Parse from a json
  factory PassportElementTypeAddress.fromJson(Map<String, dynamic> json) => const PassportElementTypeAddress();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PassportElementTypeAddress copyWith() => const PassportElementTypeAddress();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'passportElementTypeAddress';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementTypeUtilityBill extends PassportElementType {

  /// A Telegram Passport element containing the user's utility bill
  const PassportElementTypeUtilityBill();
  
  /// Parse from a json
  factory PassportElementTypeUtilityBill.fromJson(Map<String, dynamic> json) => const PassportElementTypeUtilityBill();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PassportElementTypeUtilityBill copyWith() => const PassportElementTypeUtilityBill();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'passportElementTypeUtilityBill';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementTypeBankStatement extends PassportElementType {

  /// A Telegram Passport element containing the user's bank statement
  const PassportElementTypeBankStatement();
  
  /// Parse from a json
  factory PassportElementTypeBankStatement.fromJson(Map<String, dynamic> json) => const PassportElementTypeBankStatement();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PassportElementTypeBankStatement copyWith() => const PassportElementTypeBankStatement();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'passportElementTypeBankStatement';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementTypeRentalAgreement extends PassportElementType {

  /// A Telegram Passport element containing the user's rental agreement
  const PassportElementTypeRentalAgreement();
  
  /// Parse from a json
  factory PassportElementTypeRentalAgreement.fromJson(Map<String, dynamic> json) => const PassportElementTypeRentalAgreement();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PassportElementTypeRentalAgreement copyWith() => const PassportElementTypeRentalAgreement();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'passportElementTypeRentalAgreement';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementTypePassportRegistration extends PassportElementType {

  /// A Telegram Passport element containing the registration page of the user's passport
  const PassportElementTypePassportRegistration();
  
  /// Parse from a json
  factory PassportElementTypePassportRegistration.fromJson(Map<String, dynamic> json) => const PassportElementTypePassportRegistration();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PassportElementTypePassportRegistration copyWith() => const PassportElementTypePassportRegistration();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'passportElementTypePassportRegistration';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementTypeTemporaryRegistration extends PassportElementType {

  /// A Telegram Passport element containing the user's temporary registration
  const PassportElementTypeTemporaryRegistration();
  
  /// Parse from a json
  factory PassportElementTypeTemporaryRegistration.fromJson(Map<String, dynamic> json) => const PassportElementTypeTemporaryRegistration();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PassportElementTypeTemporaryRegistration copyWith() => const PassportElementTypeTemporaryRegistration();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'passportElementTypeTemporaryRegistration';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementTypePhoneNumber extends PassportElementType {

  /// A Telegram Passport element containing the user's phone number
  const PassportElementTypePhoneNumber();
  
  /// Parse from a json
  factory PassportElementTypePhoneNumber.fromJson(Map<String, dynamic> json) => const PassportElementTypePhoneNumber();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PassportElementTypePhoneNumber copyWith() => const PassportElementTypePhoneNumber();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'passportElementTypePhoneNumber';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class PassportElementTypeEmailAddress extends PassportElementType {

  /// A Telegram Passport element containing the user's email address
  const PassportElementTypeEmailAddress();
  
  /// Parse from a json
  factory PassportElementTypeEmailAddress.fromJson(Map<String, dynamic> json) => const PassportElementTypeEmailAddress();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
    };
  }
  
  @override
  PassportElementTypeEmailAddress copyWith() => const PassportElementTypeEmailAddress();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'passportElementTypeEmailAddress';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
