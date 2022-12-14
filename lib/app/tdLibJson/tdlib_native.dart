// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: non_constant_identifier_names

import 'dart:ffi' as ffi;

/// Bindings for TdLibJson
class TDLibNative {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  TDLibNative(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  TDLibNative.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  ffi.Pointer<ffi.Void> td_json_client_create() {
    return _td_json_client_create();
  }

  late final _td_json_client_createPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function()>>(
          '_td_json_client_create');
  late final _td_json_client_create =
      _td_json_client_createPtr.asFunction<ffi.Pointer<ffi.Void> Function()>();

  void td_json_client_send(
    ffi.Pointer<ffi.Void> client,
    ffi.Pointer<ffi.Char> request,
  ) {
    return _td_json_client_send(
      client,
      request,
    );
  }

  late final _td_json_client_sendPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ffi.Void>,
              ffi.Pointer<ffi.Char>)>>('_td_json_client_send');
  late final _td_json_client_send = _td_json_client_sendPtr.asFunction<
      void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Char>)>();

  ffi.Pointer<ffi.Char> td_json_client_receive(
    ffi.Pointer<ffi.Void> client,
    double timeout,
  ) {
    return _td_json_client_receive(
      client,
      timeout,
    );
  }

  late final _td_json_client_receivePtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              ffi.Pointer<ffi.Void>, ffi.Double)>>('_td_json_client_receive');
  late final _td_json_client_receive = _td_json_client_receivePtr.asFunction<
      ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Void>, double)>();

  ffi.Pointer<ffi.Char> td_json_client_execute(
    ffi.Pointer<ffi.Void> client,
    ffi.Pointer<ffi.Char> request,
  ) {
    return _td_json_client_execute(
      client,
      request,
    );
  }

  late final _td_json_client_executePtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Void>,
              ffi.Pointer<ffi.Char>)>>('_td_json_client_execute');
  late final _td_json_client_execute = _td_json_client_executePtr.asFunction<
      ffi.Pointer<ffi.Char> Function(
          ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Char>)>();

  void td_json_client_destroy(
    ffi.Pointer<ffi.Void> client,
  ) {
    return _td_json_client_destroy(
      client,
    );
  }

  late final _td_json_client_destroyPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
          '_td_json_client_destroy');
  late final _td_json_client_destroy = _td_json_client_destroyPtr
      .asFunction<void Function(ffi.Pointer<ffi.Void>)>();
}
