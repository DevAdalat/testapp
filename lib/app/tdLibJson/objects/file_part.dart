part of '../tdlibjson_api.dart';

class FilePart extends TdObject {
  /// Contains a part of a file
  const FilePart({
    required this.data,
    this.extra,
    this.clientId,
  });

  /// [data] File bytes
  final String data;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;

  /// Parse from a json
  factory FilePart.fromJson(Map<String, dynamic> json) => FilePart(
        data: json['data'],
        extra: json['@extra'],
        clientId: json['@client_id'],
      );

  @override
  String toJson() {
    return """
  {
   "@type":"$CONSTRUCTOR",
   "data":"$data"
}
	""";
  }

  FilePart copyWith({
    String? data,
    dynamic extra,
    int? clientId,
  }) =>
      FilePart(
        data: data ?? this.data,
        extra: extra ?? this.extra,
        clientId: clientId ?? this.clientId,
      );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'filePart';

  @override
  String getConstructor() => CONSTRUCTOR;
}
