# azurerm_web_pubsub_network_acl

Manages the Network ACL for a Web Pubsub.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/web_pubsub_network_acl" 
}

inputs = {
   web_pubsub_id = "web_pubsub_id of web_pubsub_network_acl" 
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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.web_pubsub_id** | string |  The ID of the Web Pubsub service. Changing this forces a new resource to be created. | 
| **var.public_network** | [block](#public_network-block-structure) |  A `public_network` block. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.default_action** | string |  `Deny`  |  `Allow`, `Deny`  |  The default action to control the network access when no other rule matches. Possible values are `Allow` and `Deny`. Defaults to `Deny`. | 
| **var.private_endpoint** | [block](#private_endpoint-block-structure) |  -  |  -  |  A `private_endpoint` block. | 

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
| **id** | string | No  | The ID of the Web Pubsub service. | 

Additionally, all variables are provided as outputs.
