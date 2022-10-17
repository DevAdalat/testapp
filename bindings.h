void *_td_json_client_create() {}

void _td_json_client_send(void *client, const char *request) {}

const char *_td_json_client_receive(void *client, double timeout) {}

const char *_td_json_client_execute(void *client, const char *request) {}

void _td_json_client_destroy(void *client) {}
