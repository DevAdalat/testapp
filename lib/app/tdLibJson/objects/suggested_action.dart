part of '../tdlibjson_api.dart';

class SuggestedAction extends TdObject {

  /// Describes an action suggested to the current user
  const SuggestedAction();
  
  /// a SuggestedAction return type can be :
  /// * [SuggestedActionEnableArchiveAndMuteNewChats]
  /// * [SuggestedActionCheckPassword]
  /// * [SuggestedActionCheckPhoneNumber]
  /// * [SuggestedActionViewChecksHint]
  /// * [SuggestedActionConvertToBroadcastGroup]
  /// * [SuggestedActionSetPassword]
  factory SuggestedAction.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case SuggestedActionEnableArchiveAndMuteNewChats.CONSTRUCTOR:
        return SuggestedActionEnableArchiveAndMuteNewChats.fromJson(json);
      case SuggestedActionCheckPassword.CONSTRUCTOR:
        return SuggestedActionCheckPassword.fromJson(json);
      case SuggestedActionCheckPhoneNumber.CONSTRUCTOR:
        return SuggestedActionCheckPhoneNumber.fromJson(json);
      case SuggestedActionViewChecksHint.CONSTRUCTOR:
        return SuggestedActionViewChecksHint.fromJson(json);
      case SuggestedActionConvertToBroadcastGroup.CONSTRUCTOR:
        return SuggestedActionConvertToBroadcastGroup.fromJson(json);
      case SuggestedActionSetPassword.CONSTRUCTOR:
        return SuggestedActionSetPassword.fromJson(json);
      default:
        return const SuggestedAction();
    }
  }
  
  @override
  String toJson() {
	return 
	"""
  {
  
}
	""";
  }
  
  SuggestedAction copyWith() => const SuggestedAction();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'suggestedAction';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class SuggestedActionEnableArchiveAndMuteNewChats extends SuggestedAction {

  /// Suggests the user to enable "archive_and_mute_new_chats_from_unknown_users" option
  const SuggestedActionEnableArchiveAndMuteNewChats();
  
  /// Parse from a json
  factory SuggestedActionEnableArchiveAndMuteNewChats.fromJson(Map<String, dynamic> json) => const SuggestedActionEnableArchiveAndMuteNewChats();
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  @override
  SuggestedActionEnableArchiveAndMuteNewChats copyWith() => const SuggestedActionEnableArchiveAndMuteNewChats();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'suggestedActionEnableArchiveAndMuteNewChats';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class SuggestedActionCheckPassword extends SuggestedAction {

  /// Suggests the user to check whether they still remember their 2-step verification password
  const SuggestedActionCheckPassword();
  
  /// Parse from a json
  factory SuggestedActionCheckPassword.fromJson(Map<String, dynamic> json) => const SuggestedActionCheckPassword();
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  @override
  SuggestedActionCheckPassword copyWith() => const SuggestedActionCheckPassword();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'suggestedActionCheckPassword';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class SuggestedActionCheckPhoneNumber extends SuggestedAction {

  /// Suggests the user to check whether authorization phone number is correct and change the phone number if it is inaccessible
  const SuggestedActionCheckPhoneNumber();
  
  /// Parse from a json
  factory SuggestedActionCheckPhoneNumber.fromJson(Map<String, dynamic> json) => const SuggestedActionCheckPhoneNumber();
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  @override
  SuggestedActionCheckPhoneNumber copyWith() => const SuggestedActionCheckPhoneNumber();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'suggestedActionCheckPhoneNumber';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class SuggestedActionViewChecksHint extends SuggestedAction {

  /// Suggests the user to view a hint about the meaning of one and two check marks on sent messages
  const SuggestedActionViewChecksHint();
  
  /// Parse from a json
  factory SuggestedActionViewChecksHint.fromJson(Map<String, dynamic> json) => const SuggestedActionViewChecksHint();
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }
  
  @override
  SuggestedActionViewChecksHint copyWith() => const SuggestedActionViewChecksHint();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'suggestedActionViewChecksHint';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class SuggestedActionConvertToBroadcastGroup extends SuggestedAction {

  /// Suggests the user to convert specified supergroup to a broadcast group
  const SuggestedActionConvertToBroadcastGroup({
    required this.supergroupId,
  });
  
  /// [supergroupId] Supergroup identifier
  final int supergroupId;
  
  /// Parse from a json
  factory SuggestedActionConvertToBroadcastGroup.fromJson(Map<String, dynamic> json) => SuggestedActionConvertToBroadcastGroup(
    supergroupId: json['supergroup_id'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "supergroup_id":$supergroupId
}
	""";
  }
  
  @override
  SuggestedActionConvertToBroadcastGroup copyWith({
    int? supergroupId,
  }) => SuggestedActionConvertToBroadcastGroup(
    supergroupId: supergroupId ?? this.supergroupId,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'suggestedActionConvertToBroadcastGroup';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}


class SuggestedActionSetPassword extends SuggestedAction {

  /// Suggests the user to set a 2-step verification password to be able to log in again
  const SuggestedActionSetPassword({
    required this.authorizationDelay,
  });
  
  /// [authorizationDelay] The number of days to pass between consecutive authorizations if the user declines to set password
  final int authorizationDelay;
  
  /// Parse from a json
  factory SuggestedActionSetPassword.fromJson(Map<String, dynamic> json) => SuggestedActionSetPassword(
    authorizationDelay: json['authorization_delay'],
  );
  
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "authorization_delay":$authorizationDelay
}
	""";
  }
  
  @override
  SuggestedActionSetPassword copyWith({
    int? authorizationDelay,
  }) => SuggestedActionSetPassword(
    authorizationDelay: authorizationDelay ?? this.authorizationDelay,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'suggestedActionSetPassword';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
