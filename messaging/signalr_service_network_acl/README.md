# azurerm_signalr_service_network_acl

Manages the Network ACL for a SignalR service.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/signalr_service_network_acl" 
}

inputs = {
   # signalr_service_id → set in tfstate_inputs
   default_action = "default_action of signalr_service_network_acl" 
   public_network = {
      example_public_network = {
      }
  
   }
 
}

tfstate_inputs = {
   signalr_service_id = "path/to/signalr_service_component:id" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **signalr_service_id** | string |  -  |  The ID of the SignalR service. Changing this forces a new resource to be created. | 
| **default_action** | string |  `Allow`, `Deny`  |  The default action to control the network access when no other rule matches. Possible values are `Allow` and `Deny`. | 
| **public_network** | [block](#public_network-block-structure) |  -  |  A `public_network` block. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **private_endpoint** | [block](#private_endpoint-block-structure) |  A `private_endpoint` block. | 

### `private_endpoint` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `allowed_request_types` | string | No | - | The allowed request types for the Private Endpoint Connection. Possible values are 'ClientConnection', 'ServerConnection', 'RESTAPI' and 'Trace'. |
| `denied_request_types` | string | No | - | The denied request types for the Private Endpoint Connection. Possible values are 'ClientConnection', 'ServerConnection', 'RESTAPI' and 'Trace'. |

### `public_network` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `allowed_request_types` | string | No | - | The allowed request types for the public network. Possible values are 'ClientConnection', 'ServerConnection', 'RESTAPI' and 'Trace'. |
| `denied_request_types` | string | No | - | The denied request types for the public network. Possible values are 'ClientConnection', 'ServerConnection', 'RESTAPI' and 'Trace'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the SignalR service. | 

Additionally, all variables are provided as outputs.
