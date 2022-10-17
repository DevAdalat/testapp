part of '../tdlibjson_api.dart';

class SetDefaultChannelAdministratorRights extends TdFunction {
  /// Sets default administrator rights for adding the bot to channel chats; for bots only
  const SetDefaultChannelAdministratorRights({
    this.defaultChannelAdministratorRights,
  });

  /// [defaultChannelAdministratorRights] Default administrator rights for adding the bot to channels; may be null
  final ChatAdministratorRights? defaultChannelAdministratorRights;

  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "default_channel_administrator_rights":
          defaultChannelAdministratorRights?.toJson(),
      "@extra": extra,
    };
  }

  SetDefaultChannelAdministratorRights copyWith({
    ChatAdministratorRights? defaultChannelAdministratorRights,
  }) =>
      SetDefaultChannelAdministratorRights(
        defaultChannelAdministratorRights: defaultChannelAdministratorRights ??
            this.defaultChannelAdministratorRights,
      );

// ignore: constant_identifier_names
// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'setDefaultChannelAdministratorRights';

  @override
  String getConstructor() => CONSTRUCTOR;
}
