part of '../tdlibjson_api.dart';

class GetChatFilterDefaultIconName extends TdFunction {
  /// Returns default icon name for a filter. Can be called synchronously
  const GetChatFilterDefaultIconName({
    required this.filter,
  });

  /// [filter] Chat filter
  final ChatFilter filter;

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "filter":"${filter.toJson()}"
}
	""";
  }

  GetChatFilterDefaultIconName copyWith({
    ChatFilter? filter,
  }) =>
      GetChatFilterDefaultIconName(
        filter: filter ?? this.filter,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'getChatFilterDefaultIconName';

  @override
  String getConstructor() => CONSTRUCTOR;
}
