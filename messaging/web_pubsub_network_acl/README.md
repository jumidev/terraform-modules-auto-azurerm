# azurerm_web_pubsub_network_acl

Manages the Network ACL for a Web Pubsub.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **web_pubsub_id** | string | True | -  |  -  | The ID of the Web Pubsub service. Changing this forces a new resource to be created. | 
| **default_action** | string | False | `Deny`  |  `Allow`, `Deny`  | The default action to control the network access when no other rule matches. Possible values are `Allow` and `Deny`. Defaults to `Deny`. | 
| **public_network** | block | True | -  |  -  | A `public_network` block. | 
| **private_endpoint** | block | False | -  |  -  | A `private_endpoint` block. | 

