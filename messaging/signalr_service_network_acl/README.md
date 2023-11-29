# azurerm_signalr_service_network_acl

Manages the Network ACL for a SignalR service.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.signalr_service_id** | string | True | -  |  The ID of the SignalR service. Changing this forces a new resource to be created. | 
| **var.default_action** | string | True | `Allow`, `Deny`  |  The default action to control the network access when no other rule matches. Possible values are `Allow` and `Deny`. | 
| **var.public_network** | block | True | -  |  A `public_network` block. | 
| **var.private_endpoint** | block | False | -  |  A `private_endpoint` block. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **signalr_service_id** | string  | - | 
| **default_action** | string  | - | 
| **public_network** | block  | - | 
| **private_endpoint** | block  | - | 
| **id** | string  | The ID of the SignalR service. | 