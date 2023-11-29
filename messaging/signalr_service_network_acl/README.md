# azurerm_signalr_service_network_acl

Manages the Network ACL for a SignalR service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **signalr_service_id** | string | True | -  |  -  | The ID of the SignalR service. Changing this forces a new resource to be created. | 
| **default_action** | string | True | -  |  `Allow`, `Deny`  | The default action to control the network access when no other rule matches. Possible values are `Allow` and `Deny`. | 
| **public_network** | block | True | -  |  -  | A `public_network` block. | 
| **private_endpoint** | block | False | -  |  -  | A `private_endpoint` block. | 

