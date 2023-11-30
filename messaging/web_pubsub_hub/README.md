# azurerm_web_pubsub_hub

Manages the hub settings for a Web Pubsub.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the Web Pubsub hub service. Changing this forces a new resource to be created. | 
| **var.web_pubsub_id** | string | True | -  |  -  |  Specifies the id of the Web Pubsub. Changing this forces a new resource to be created. | 
| **var.anonymous_connections_enabled** | bool | False | `False`  |  `true`, `false`  |  Is anonymous connections are allowed for this hub? Defaults to `false`. Possible values are `true`, `false`. | 
| **var.event_handler** | block | False | -  |  -  |  An `event_handler` block. | 
| **var.event_listener** | block | False | -  |  -  |  An `event_listener` block. | 



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

## Example minimal hclt

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