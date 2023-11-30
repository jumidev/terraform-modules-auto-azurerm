# azurerm_web_pubsub_network_acl

Manages the Network ACL for a Web Pubsub.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/web_pubsub_network_acl" 
}

inputs = {
   web_pubsub_id = "web_pubsub_id of web_pubsub_network_acl" 
   public_network = "public_network of web_pubsub_network_acl" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.web_pubsub_id** | string | True | -  |  -  |  The ID of the Web Pubsub service. Changing this forces a new resource to be created. | 
| **var.default_action** | string | False | `Deny`  |  `Allow`, `Deny`  |  The default action to control the network access when no other rule matches. Possible values are `Allow` and `Deny`. Defaults to `Deny`. | 
| **var.public_network** | block | True | -  |  -  |  A `public_network` block. | | `public_network` block structure: || 
|   allowed_request_types (string): The allowed request types for the public network. Possible values are 'ClientConnection', 'ServerConnection', 'RESTAPI' and 'Trace'. ||
|   denied_request_types (string): The denied request types for the public network. Possible values are 'ClientConnection', 'ServerConnection', 'RESTAPI' and 'Trace'. ||

| **var.private_endpoint** | block | False | -  |  -  |  A `private_endpoint` block. | | `private_endpoint` block structure: || 
|   allowed_request_types (string): The allowed request types for the Private Endpoint Connection. Possible values are 'ClientConnection', 'ServerConnection', 'RESTAPI' and 'Trace'. ||
|   denied_request_types (string): The denied request types for the Private Endpoint Connection. Possible values are 'ClientConnection', 'ServerConnection', 'RESTAPI' and 'Trace'. ||




## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Web Pubsub service. | 

Additionally, all variables are provided as outputs.
