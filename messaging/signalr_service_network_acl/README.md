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

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/signalr_service_network_acl" 
}

inputs = {
   signalr_service_id = "signalr_service_id of signalr_service_network_acl" 
   default_action = "default_action of signalr_service_network_acl" 
   public_network = "public_network of signalr_service_network_acl" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```