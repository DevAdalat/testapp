part of '../tdlibjson_api.dart';

class UserStatus extends TdObject {
  /// Describes the last time the user was online
  const UserStatus();

  /// a UserStatus return type can be :
  /// * [UserStatusEmpty]
  /// * [UserStatusOnline]
  /// * [UserStatusOffline]
  /// * [UserStatusRecently]
  /// * [UserStatusLastWeek]
  /// * [UserStatusLastMonth]
  factory UserStatus.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case UserStatusEmpty.CONSTRUCTOR:
        return UserStatusEmpty.fromJson(json);
      case UserStatusOnline.CONSTRUCTOR:
        return UserStatusOnline.fromJson(json);
      case UserStatusOffline.CONSTRUCTOR:
        return UserStatusOffline.fromJson(json);
      case UserStatusRecently.CONSTRUCTOR:
        return UserStatusRecently.fromJson(json);
      case UserStatusLastWeek.CONSTRUCTOR:
        return UserStatusLastWeek.fromJson(json);
      case UserStatusLastMonth.CONSTRUCTOR:
        return UserStatusLastMonth.fromJson(json);
      default:
        return const UserStatus();
    }
  }

  @override
  String toJson() {
    return """
  {
  
}
	""";
  }

  UserStatus copyWith() => const UserStatus();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'userStatus';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserStatusEmpty extends UserStatus {
  /// The user status was never changed
  const UserStatusEmpty();

  /// Parse from a json
  factory UserStatusEmpty.fromJson(Map<String, dynamic> json) =>
      const UserStatusEmpty();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }

  @override
  UserStatusEmpty copyWith() => const UserStatusEmpty();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'userStatusEmpty';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserStatusOnline extends UserStatus {
  /// The user is online
  const UserStatusOnline({
    required this.expires,
  });

  /// [expires] Point in time (Unix timestamp) when the user's online status will expire
  final int expires;

  /// Parse from a json
  factory UserStatusOnline.fromJson(Map<String, dynamic> json) =>
      UserStatusOnline(
        expires: json['expires'],
      );

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "expires":$expires
}
	""";
  }

  @override
  UserStatusOnline copyWith({
    int? expires,
  }) =>
      UserStatusOnline(
        expires: expires ?? this.expires,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'userStatusOnline';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserStatusOffline extends UserStatus {
  /// The user is offline
  const UserStatusOffline({
    required this.wasOnline,
  });

  /// [wasOnline] Point in time (Unix timestamp) when the user was last online
  final int wasOnline;

  /// Parse from a json
  factory UserStatusOffline.fromJson(Map<String, dynamic> json) =>
      UserStatusOffline(
        wasOnline: json['was_online'],
      );

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "was_online":$wasOnline
}
	""";
  }

  @override
  UserStatusOffline copyWith({
    int? wasOnline,
  }) =>
      UserStatusOffline(
        wasOnline: wasOnline ?? this.wasOnline,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'userStatusOffline';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserStatusRecently extends UserStatus {
  /// The user was online recently
  const UserStatusRecently();

  /// Parse from a json
  factory UserStatusRecently.fromJson(Map<String, dynamic> json) =>
      const UserStatusRecently();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }

  @override
  UserStatusRecently copyWith() => const UserStatusRecently();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'userStatusRecently';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserStatusLastWeek extends UserStatus {
  /// The user is offline, but was online last week
  const UserStatusLastWeek();

  /// Parse from a json
  factory UserStatusLastWeek.fromJson(Map<String, dynamic> json) =>
      const UserStatusLastWeek();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }

  @override
  UserStatusLastWeek copyWith() => const UserStatusLastWeek();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'userStatusLastWeek';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class UserStatusLastMonth extends UserStatus {
  /// The user is offline, but was online last month
  const UserStatusLastMonth();

  /// Parse from a json
  factory UserStatusLastMonth.fromJson(Map<String, dynamic> json) =>
      const UserStatusLastMonth();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }

  @override
  UserStatusLastMonth copyWith() => const UserStatusLastMonth();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'userStatusLastMonth';

  @override
  String getConstructor() => CONSTRUCTOR;
}
