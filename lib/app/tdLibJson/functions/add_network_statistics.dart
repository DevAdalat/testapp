part of '../tdlibjson_api.dart';

class AddNetworkStatistics extends TdFunction {

  /// Adds the specified data to data usage statistics. Can be called before authorization
  const AddNetworkStatistics({
    required this.entry,
  });
  
  /// [entry] The network statistics entry with the data to be added to statistics
  final NetworkStatisticsEntry entry;
  
  @override
  String toJson() {
	return 
	"""
  {
   "@type":"$CONSTRUCTOR",
   "entry":${entry.toJson()}
}
	""";
  }
  
  AddNetworkStatistics copyWith({
    NetworkStatisticsEntry? entry,
  }) => AddNetworkStatistics(
    entry: entry ?? this.entry,
  );

// ignore: constant_identifier_names
  static const CONSTRUCTOR = 'addNetworkStatistics';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
