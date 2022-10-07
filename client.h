//
 // Copyright Aliaksei Levin (levlam@telegram.org), Arseny Smirnov (arseny30@gmail.com) 2014-2021
 //
 // Distributed under the Boost Software License, Version 1.0. (See accompanying
 // file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
 //
 #pragma once
 
 #include "td/telegram/tdjson_export.h"
 
 #ifdef __cplusplus
 extern "C" {
 #endif
 
 TDJSON_EXPORT int td_create_client_id();
 
 TDJSON_EXPORT void td_send(int client_id, const char *request);
 
 TDJSON_EXPORT const char *td_receive(double timeout);
 
 TDJSON_EXPORT const char *td_execute(const char *request);
 
 typedef void (*td_log_message_callback_ptr)(int verbosity_level, const char *message);
 
 TDJSON_EXPORT void td_set_log_message_callback(int max_verbosity_level, td_log_message_callback_ptr callback);
 
 TDJSON_EXPORT void *td_json_client_create();
 
 TDJSON_EXPORT void td_json_client_send(void *client, const char *request);
 
 TDJSON_EXPORT const char *td_json_client_receive(void *client, double timeout);
 
 TDJSON_EXPORT const char *td_json_client_execute(void *client, const char *request);
 
 TDJSON_EXPORT void td_json_client_destroy(void *client);
 
 #ifdef __cplusplus
 }  // extern "C"
 #endif
