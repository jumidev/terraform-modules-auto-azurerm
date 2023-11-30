# azurerm_web_pubsub_hub

Manages the hub settings for a Web Pubsub.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/web_pubsub_hub" 
}

inputs = {
   name = "name of web_pubsub_hub" 
   web_pubsub_id = "web_pubsub_id of web_pubsub_hub" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the Web Pubsub hub service. Changing this forces a new resource to be created. | 
| **var.web_pubsub_id** | string | True | -  |  -  |  Specifies the id of the Web Pubsub. Changing this forces a new resource to be created. | 
| **var.anonymous_connections_enabled** | bool | False | `False`  |  `true`, `false`  |  Is anonymous connections are allowed for this hub? Defaults to `false`. Possible values are `true`, `false`. | 
| **var.event_handler** | block | False | -  |  -  |  An `event_handler` block. | | `event_handler` block structure: || 
|   url_template (string): (REQUIRED) The Event Handler URL Template. Two predefined parameters '{hub}' and '{event}' are available to use in the template. The value of the EventHandler URL is dynamically calculated when the client request comes in. Example: 'http://example.com/api/{hub}/{event}'. ||
|   user_event_pattern (string): Specifies the matching event names. There are 3 kind of patterns supported: * '*' matches any event name * ',' Combine multiple events with ',' for example 'event1,event2', it matches event 'event1' and 'event2' * The single event name, for example 'event1', it matches 'event1'. ||
|   system_events (string): Specifies the list of system events. Supported values are 'connect', 'connected' and 'disconnected'. ||
|   auth (block): An 'auth' block. ||

| **var.event_listener** | block | False | -  |  -  |  An `event_listener` block. | | `event_listener` block structure: || 
|   system_event_name_filter (string): Specifies the list of system events. Supported values are 'connected' and 'disconnected'. ||
|   user_event_name_filter (string): Specifies the list of matching user event names. '['*']' can be used to match all events. ||
|   eventhub_namespace_name (string): (REQUIRED) Specifies the event hub namespace name to receive the events. ||
|   eventhub_name (string): (REQUIRED) Specifies the event hub name to receive the events. ||




## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Web Pubsub Hub resource. | 
| **name** | string | No  | The name of the Web Pubsub Hub resource. Changing this forces a new resource to be created. | 

Additionally, all variables are provided as outputs.
