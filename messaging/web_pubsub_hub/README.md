# azurerm_web_pubsub_hub

Manages the hub settings for a Web Pubsub.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Web Pubsub hub service. Changing this forces a new resource to be created. | 
| **web_pubsub_id** | string | True | -  |  -  | Specifies the id of the Web Pubsub. Changing this forces a new resource to be created. | 
| **anonymous_connections_enabled** | bool | False | `False`  |  `true`, `false`  | Is anonymous connections are allowed for this hub? Defaults to `false`. Possible values are `true`, `false`. | 
| **event_handler** | block | False | -  |  -  | An `event_handler` block. | 
| **event_listener** | block | False | -  |  -  | An `event_listener` block. | 

