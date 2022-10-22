// ignore_for_file: non_constant_identifier_names
import 'dart:ffi' as ffi;
import 'package:tfile/generated_bindings.dart';

abstract class TDPlugin {
  NativeLibrary loadTDLib();

  ffi.Pointer<ffi.Void> td_json_client_create();

  void td_json_client_send(
      ffi.Pointer<ffi.Void> client, ffi.Pointer<ffi.Char> request);

  ffi.Pointer<ffi.Char> td_json_client_receive(
      ffi.Pointer<ffi.Void> client, double timeout);

  ffi.Pointer<ffi.Char> td_json_client_execute(
      ffi.Pointer<ffi.Void> client, ffi.Pointer<ffi.Char> request);

  void td_json_client_destroy(ffi.Pointer<ffi.Void> client);
}
