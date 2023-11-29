# azurerm_web_pubsub_hub

Manages the hub settings for a Web Pubsub.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the Web Pubsub hub service. Changing this forces a new resource to be created. | 
| **var.web_pubsub_id** | string | True | -  |  -  | Specifies the id of the Web Pubsub. Changing this forces a new resource to be created. | 
| **var.anonymous_connections_enabled** | bool | False | `False`  |  `true`, `false`  | Is anonymous connections are allowed for this hub? Defaults to `false`. Possible values are `true`, `false`. | 
| **var.event_handler** | block | False | -  |  -  | An `event_handler` block. | 
| **var.event_listener** | block | False | -  |  -  | An `event_listener` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **web_pubsub_id** | string  | - | 
| **anonymous_connections_enabled** | bool  | - | 
| **event_handler** | block  | - | 
| **event_listener** | block  | - | 
| **id** | string  | The ID of the Web Pubsub Hub resource. | 
| **name** | string  | The name of the Web Pubsub Hub resource. Changing this forces a new resource to be created. | 