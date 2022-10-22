part of '../tdlibjson_api.dart';

class GetInactiveSupergroupChats extends TdFunction {
  /// Returns a list of recently inactive supergroups and channels. Can be used when user reaches limit on the number of joined supergroups and channels and receives CHANNELS_TOO_MUCH error. Also, the limit can be increased with Telegram Premium
  const GetInactiveSupergroupChats();

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR"
}
	""";
  }

  GetInactiveSupergroupChats copyWith() => const GetInactiveSupergroupChats();

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getInactiveSupergroupChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
