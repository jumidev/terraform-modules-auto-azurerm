# azurerm_signalr_service_network_acl

Manages the Network ACL for a SignalR service.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/signalr_service_network_acl" 
}

inputs = {
   signalr_service_id = "signalr_service_id of signalr_service_network_acl" 
   default_action = "default_action of signalr_service_network_acl" 
   public_network = {
      example_public_network = {
      }
  
   }
 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.signalr_service_id** | string | True | -  |  The ID of the SignalR service. Changing this forces a new resource to be created. | 
| **var.default_action** | string | True | `Allow`, `Deny`  |  The default action to control the network access when no other rule matches. Possible values are `Allow` and `Deny`. | 
| **var.public_network** | block | True | -  |  A `public_network` block. | 
| **var.private_endpoint** | block | False | -  |  A `private_endpoint` block. | 

### `public_network` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `allowed_request_types` | string | No | - | The allowed request types for the public network. Possible values are 'ClientConnection', 'ServerConnection', 'RESTAPI' and 'Trace'. |
| `denied_request_types` | string | No | - | The denied request types for the public network. Possible values are 'ClientConnection', 'ServerConnection', 'RESTAPI' and 'Trace'. |

### `private_endpoint` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `allowed_request_types` | string | No | - | The allowed request types for the Private Endpoint Connection. Possible values are 'ClientConnection', 'ServerConnection', 'RESTAPI' and 'Trace'. |
| `denied_request_types` | string | No | - | The denied request types for the Private Endpoint Connection. Possible values are 'ClientConnection', 'ServerConnection', 'RESTAPI' and 'Trace'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the SignalR service. | 

Additionally, all variables are provided as outputs.
