part of '../tdlibjson_api.dart';

class User extends TdObject {
  /// Represents a user
  const User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.phoneNumber,
    required this.status,
    this.profilePhoto,
    this.emojiStatus,
    required this.isContact,
    required this.isMutualContact,
    required this.isVerified,
    required this.isPremium,
    required this.isSupport,
    required this.restrictionReason,
    required this.isScam,
    required this.isFake,
    required this.haveAccess,
    required this.type,
    required this.languageCode,
    required this.addedToAttachmentMenu,
    this.extra,
    this.clientId,
  });

  /// [id] User identifier
  final int id;

  /// [firstName] First name of the user
  final String firstName;

  /// [lastName] Last name of the user
  final String lastName;

  /// [username] Username of the user
  final String username;

  /// [phoneNumber] Phone number of the user
  final String phoneNumber;

  /// [status] Current online status of the user
  final UserStatus status;

  /// [profilePhoto] Profile photo of the user; may be null
  final ProfilePhoto? profilePhoto;

  /// [emojiStatus] Emoji status to be shown instead of the default Telegram Premium badge; may be null. For Telegram Premium users only
  final EmojiStatus? emojiStatus;

  /// [isContact] The user is a contact of the current user
  final bool isContact;

  /// [isMutualContact] The user is a contact of the current user and the current user is a contact of the user
  final bool isMutualContact;

  /// [isVerified] True, if the user is verified
  final bool isVerified;

  /// [isPremium] True, if the user is a Telegram Premium user
  final bool isPremium;

  /// [isSupport] True, if the user is Telegram support account
  final bool isSupport;

  /// [restrictionReason] If non-empty, it contains a human-readable description of the reason why access to this user must be restricted
  final String restrictionReason;

  /// [isScam] True, if many users reported this user as a scam
  final bool isScam;

  /// [isFake] True, if many users reported this user as a fake account
  final bool isFake;

  /// [haveAccess] If false, the user is inaccessible, and the only information known about the user is inside this class. Identifier of the user can't be passed to any method except GetUser
  final bool haveAccess;

  /// [type] Type of the user
  final UserType type;

  /// [languageCode] IETF language tag of the user's language; only available to bots
  final String languageCode;

  /// [addedToAttachmentMenu] True, if the user added the current bot to attachment menu; only available to bots
  final bool addedToAttachmentMenu;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        username: json['username'],
        phoneNumber: json['phone_number'],
        status: UserStatus.fromJson(json['status']),
        profilePhoto: json['profile_photo'] == null
            ? null
            : ProfilePhoto.fromJson(json['profile_photo']),
        emojiStatus: json['emoji_status'] == null
            ? null
            : EmojiStatus.fromJson(json['emoji_status']),
        isContact: json['is_contact'],
        isMutualContact: json['is_mutual_contact'],
        isVerified: json['is_verified'],
        isPremium: json['is_premium'],
        isSupport: json['is_support'],
        restrictionReason: json['restriction_reason'],
        isScam: json['is_scam'],
        isFake: json['is_fake'],
        haveAccess: json['have_access'],
        type: UserType.fromJson(json['type']),
        languageCode: json['language_code'],
        addedToAttachmentMenu: json['added_to_attachment_menu'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "id":$id,
   "first_name":"$firstName",
   "last_name":"$lastName",
   "username":"$username",
   "phone_number":"$phoneNumber",
   "status":"${status.toJson()}",
   "profile_photo":"${profilePhoto?.toJson()}",
   "emoji_status":"${emojiStatus?.toJson()}",
   "is_contact":$isContact,
   "is_mutual_contact":$isMutualContact,
   "is_verified":$isVerified,
   "is_premium":$isPremium,
   "is_support":$isSupport,
   "restriction_reason":"$restrictionReason",
   "is_scam":$isScam,
   "is_fake":$isFake,
   "have_access":$haveAccess,
   "type":"${type.toJson()}",
   "language_code":"$languageCode",
   "added_to_attachment_menu":$addedToAttachmentMenu
}
	""";
  }

  User copyWith({
    int? id,
    String? firstName,
    String? lastName,
    String? username,
    String? phoneNumber,
    UserStatus? status,
    ProfilePhoto? profilePhoto,
    EmojiStatus? emojiStatus,
    bool? isContact,
    bool? isMutualContact,
    bool? isVerified,
    bool? isPremium,
    bool? isSupport,
    String? restrictionReason,
    bool? isScam,
    bool? isFake,
    bool? haveAccess,
    UserType? type,
    String? languageCode,
    bool? addedToAttachmentMenu,
    dynamic extra,
    int? clientId,
  }) =>
      User(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        username: username ?? this.username,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        status: status ?? this.status,
        profilePhoto: profilePhoto ?? this.profilePhoto,
        emojiStatus: emojiStatus ?? this.emojiStatus,
        isContact: isContact ?? this.isContact,
        isMutualContact: isMutualContact ?? this.isMutualContact,
        isVerified: isVerified ?? this.isVerified,
        isPremium: isPremium ?? this.isPremium,
        isSupport: isSupport ?? this.isSupport,
        restrictionReason: restrictionReason ?? this.restrictionReason,
        isScam: isScam ?? this.isScam,
        isFake: isFake ?? this.isFake,
        haveAccess: haveAccess ?? this.haveAccess,
        type: type ?? this.type,
        languageCode: languageCode ?? this.languageCode,
        addedToAttachmentMenu:
            addedToAttachmentMenu ?? this.addedToAttachmentMenu,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'user';

  @override
  String getConstructor() => CONSTRUCTOR;
}
