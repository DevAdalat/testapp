// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'dart:ffi' as ffi;

class NativeLibrary {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  NativeLibrary(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  NativeLibrary.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  /// Returns an opaque identifier of a new TDLib instance.
  /// The TDLib instance will not send updates until the first request is sent to it.
  /// \return Opaque identifier of a new TDLib instance.
  int td_create_client_id() {
    return _td_create_client_id();
  }

  late final _td_create_client_idPtr =
      _lookup<ffi.NativeFunction<ffi.Int Function()>>('td_create_client_id');
  late final _td_create_client_id =
      _td_create_client_idPtr.asFunction<int Function()>();

  /// Sends request to the TDLib client. May be called from any thread.
  /// \param[in] client_id TDLib client identifier.
  /// \param[in] request JSON-serialized null-terminated request to TDLib.
  int td_send(
    int client_id,
    ffi.Pointer<ffi.Char> request,
  ) {
    return _td_send(
      client_id,
      request,
    );
  }

  late final _td_sendPtr = _lookup<
          ffi.NativeFunction<ffi.Int Function(ffi.Int, ffi.Pointer<ffi.Char>)>>(
      'td_send');
  late final _td_send =
      _td_sendPtr.asFunction<int Function(int, ffi.Pointer<ffi.Char>)>();

  /// Receives incoming updates and request responses. Must not be called simultaneously from two different threads.
  /// The returned pointer can be used until the next call to td_receive or td_execute, after which it will be deallocated by TDLib.
  /// \param[in] timeout The maximum number of seconds allowed for this function to wait for new data.
  /// \return JSON-serialized null-terminated incoming update or request response. May be NULL if the timeout expires.
  ffi.Pointer<ffi.Int> td_receive(
    double timeout,
  ) {
    return _td_receive(
      timeout,
    );
  }

  late final _td_receivePtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Int> Function(ffi.Double)>>(
          'td_receive');
  late final _td_receive =
      _td_receivePtr.asFunction<ffi.Pointer<ffi.Int> Function(double)>();

  /// Synchronously executes a TDLib request.
  /// A request can be executed synchronously, only if it is documented with "Can be called synchronously".
  /// The returned pointer can be used until the next call to td_receive or td_execute, after which it will be deallocated by TDLib.
  /// \param[in] request JSON-serialized null-terminated request to TDLib.
  /// \return JSON-serialized null-terminated request response.
  ffi.Pointer<ffi.Int> td_execute(
    ffi.Pointer<ffi.Char> request,
  ) {
    return _td_execute(
      request,
    );
  }

  late final _td_executePtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Int> Function(ffi.Pointer<ffi.Char>)>>('td_execute');
  late final _td_execute = _td_executePtr
      .asFunction<ffi.Pointer<ffi.Int> Function(ffi.Pointer<ffi.Char>)>();

  /// Sets the callback that will be called when a message is added to the internal TDLib log.
  /// None of the TDLib methods can be called from the callback.
  /// By default the callback is not set.
  ///
  /// \param[in] max_verbosity_level The maximum verbosity level of messages for which the callback will be called.
  /// \param[in] callback Callback that will be called when a message is added to the internal TDLib log.
  /// Pass nullptr to remove the callback.
  int td_set_log_message_callback(
    int max_verbosity_level,
    td_log_message_callback_ptr callback,
  ) {
    return _td_set_log_message_callback(
      max_verbosity_level,
      callback,
    );
  }

  late final _td_set_log_message_callbackPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int Function(ffi.Int,
              td_log_message_callback_ptr)>>('td_set_log_message_callback');
  late final _td_set_log_message_callback = _td_set_log_message_callbackPtr
      .asFunction<int Function(int, td_log_message_callback_ptr)>();

  /// Creates a new instance of TDLib.
  /// \return Pointer to the created instance of TDLib.
  ffi.Pointer<ffi.Void> td_json_client_create() {
    return _td_json_client_create();
  }

  late final _td_json_client_createPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function()>>(
          'td_json_client_create');
  late final _td_json_client_create =
      _td_json_client_createPtr.asFunction<ffi.Pointer<ffi.Void> Function()>();

  /// Sends request to the TDLib client. May be called from any thread.
  /// \param[in] client The client.
  /// \param[in] request JSON-serialized null-terminated request to TDLib.
  int td_json_client_send(
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
          ffi.Int Function(ffi.Pointer<ffi.Void>,
              ffi.Pointer<ffi.Char>)>>('td_json_client_send');
  late final _td_json_client_send = _td_json_client_sendPtr
      .asFunction<int Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Char>)>();

  /// Receives incoming updates and request responses from the TDLib client. May be called from any thread, but
  /// must not be called simultaneously from two different threads.
  /// Returned pointer will be deallocated by TDLib during next call to td_json_client_receive or td_json_client_execute
  /// in the same thread, so it can't be used after that.
  /// \param[in] client The client.
  /// \param[in] timeout The maximum number of seconds allowed for this function to wait for new data.
  /// \return JSON-serialized null-terminated incoming update or request response. May be NULL if the timeout expires.
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
              ffi.Pointer<ffi.Void>, ffi.Double)>>('td_json_client_receive');
  late final _td_json_client_receive = _td_json_client_receivePtr.asFunction<
      ffi.Pointer<ffi.Char> Function(ffi.Pointer<ffi.Void>, double)>();

  /// Synchronously executes TDLib request. May be called from any thread.
  /// Only a few requests can be executed synchronously.
  /// Returned pointer will be deallocated by TDLib during next call to td_json_client_receive or td_json_client_execute
  /// in the same thread, so it can't be used after that.
  /// \param[in] client The client. Currently ignored for all requests, so NULL can be passed.
  /// \param[in] request JSON-serialized null-terminated request to TDLib.
  /// \return JSON-serialized null-terminated request response.
  ffi.Pointer<ffi.Int> td_json_client_execute(
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
          ffi.Pointer<ffi.Int> Function(ffi.Pointer<ffi.Void>,
              ffi.Pointer<ffi.Char>)>>('td_json_client_execute');
  late final _td_json_client_execute = _td_json_client_executePtr.asFunction<
      ffi.Pointer<ffi.Int> Function(
          ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Char>)>();

  /// Destroys the TDLib client instance. After this is called the client instance must not be used anymore.
  /// \param[in] client The client.
  int td_json_client_destroy(
    ffi.Pointer<ffi.Void> client,
  ) {
    return _td_json_client_destroy(
      client,
    );
  }

  late final _td_json_client_destroyPtr =
      _lookup<ffi.NativeFunction<ffi.Int Function(ffi.Pointer<ffi.Void>)>>(
          'td_json_client_destroy');
  late final _td_json_client_destroy = _td_json_client_destroyPtr
      .asFunction<int Function(ffi.Pointer<ffi.Void>)>();

  /// Sets the path to the file where the internal TDLib log will be written.
  /// By default TDLib writes logs to stderr or an OS specific log.
  /// Use this method to write the log to a file instead.
  ///
  /// \deprecated Use synchronous setLogStream request instead.
  /// \param[in]  file_path Null-terminated path to a file where the internal TDLib log will be written.
  /// Use an empty path to switch back to the default logging behaviour.
  /// \return True 1 on success, or 0 otherwise, i.e. if the file can't be opened for writing.
  int td_set_log_file_path(
    ffi.Pointer<ffi.Char> file_path,
  ) {
    return _td_set_log_file_path(
      file_path,
    );
  }

  late final _td_set_log_file_pathPtr =
      _lookup<ffi.NativeFunction<ffi.Int Function(ffi.Pointer<ffi.Char>)>>(
          'td_set_log_file_path');
  late final _td_set_log_file_path = _td_set_log_file_pathPtr
      .asFunction<int Function(ffi.Pointer<ffi.Char>)>();

  /// Sets the maximum size of the file to where the internal TDLib log is written before the file will be auto-rotated.
  /// Unused if log is not written to a file. Defaults to 10 MB.
  ///
  /// \deprecated Use synchronous setLogStream request instead.
  /// \param[in]  max_file_size The maximum size of the file to where the internal TDLib log is written before the file
  /// will be auto-rotated. Should be positive.
  int td_set_log_max_file_size(
    int max_file_size,
  ) {
    return _td_set_log_max_file_size(
      max_file_size,
    );
  }

  late final _td_set_log_max_file_sizePtr =
      _lookup<ffi.NativeFunction<ffi.Int Function(ffi.LongLong)>>(
          'td_set_log_max_file_size');
  late final _td_set_log_max_file_size =
      _td_set_log_max_file_sizePtr.asFunction<int Function(int)>();

  /// Sets the verbosity level of the internal logging of TDLib.
  /// By default the TDLib uses a log verbosity level of 5.
  ///
  /// \deprecated Use synchronous setLogVerbosityLevel request instead.
  /// \param[in]  new_verbosity_level New value of logging verbosity level.
  /// Value 0 corresponds to fatal errors,
  /// value 1 corresponds to errors,
  /// value 2 corresponds to warnings and debug warnings,
  /// value 3 corresponds to informational,
  /// value 4 corresponds to debug,
  /// value 5 corresponds to verbose debug,
  /// value greater than 5 and up to 1024 can be used to enable even more logging.
  int td_set_log_verbosity_level(
    int new_verbosity_level,
  ) {
    return _td_set_log_verbosity_level(
      new_verbosity_level,
    );
  }

  late final _td_set_log_verbosity_levelPtr =
      _lookup<ffi.NativeFunction<ffi.Int Function(ffi.Int)>>(
          'td_set_log_verbosity_level');
  late final _td_set_log_verbosity_level =
      _td_set_log_verbosity_levelPtr.asFunction<int Function(int)>();

  /// Sets the callback that will be called when a fatal error happens.
  /// None of the TDLib methods can be called from the callback.
  /// The TDLib will crash as soon as callback returns.
  /// By default the callback is not set.
  ///
  /// \deprecated Use td_set_log_message_callback instead.
  /// \param[in]  callback Callback that will be called when a fatal error happens.
  /// Pass NULL to remove the callback.
  int td_set_log_fatal_error_callback(
    td_log_fatal_error_callback_ptr callback,
  ) {
    return _td_set_log_fatal_error_callback(
      callback,
    );
  }

  late final _td_set_log_fatal_error_callbackPtr = _lookup<
          ffi.NativeFunction<
              ffi.Int Function(td_log_fatal_error_callback_ptr)>>(
      'td_set_log_fatal_error_callback');
  late final _td_set_log_fatal_error_callback =
      _td_set_log_fatal_error_callbackPtr
          .asFunction<int Function(td_log_fatal_error_callback_ptr)>();
}

/// A type of callback function that will be called when a message is added to the internal TDLib log.
///
/// \param verbosity_level Log verbosity level with which the message was added from -1 up to 1024.
/// If 0, then TDLib will crash as soon as the callback returns.
/// None of the TDLib methods can be called from the callback.
/// \param message Null-terminated UTF-8-encoded string with the message added to the log.
typedef td_log_message_callback_ptr = ffi.Pointer<
    ffi.NativeFunction<ffi.Void Function(ffi.Int, ffi.Pointer<ffi.Char>)>>;

/// A type of callback function that will be called when a fatal error happens.
///
/// \param error_message Null-terminated string with a description of a happened fatal error.
typedef td_log_fatal_error_callback_ptr
    = ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Char>)>>;