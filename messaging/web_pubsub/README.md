# azurerm_web_pubsub

Manages an Azure Web PubSub Service.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "messaging/web_pubsub"   
}

inputs = {
   name = "The name of the Web PubSub service"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   sku = "Specifies which SKU to use"   
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
| **name** | string |  -  |  The name of the Web PubSub service. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which to create the Web PubSub service. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specifies the supported Azure location where the Web PubSub service exists. Changing this forces a new resource to be created. | 
| **sku** | string |  `Free_F1`, `Standard_S1`, `Premium_P1`  |  Specifies which SKU to use. Possible values are `Free_F1`, `Standard_S1`, and `Premium_P1`. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **capacity** | string |  -  |  `1`, `2`, `5`, `10`, `20`, `50`, `100`  |  Specifies the number of units associated with this Web PubSub resource. Valid values are: Free: `1`, Standard: `1`, `2`, `5`, `10`, `20`, `50`, `100`. | 
| **public_network_access_enabled** | bool |  `True`  |  -  |  Whether to enable public network access? Defaults to `true`. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 
| **live_trace** | [block](#live_trace-block-structure) |  -  |  -  |  A `live_trace` block. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **local_auth_enabled** | bool |  `True`  |  -  |  Whether to enable local auth? Defaults to `true`. | 
| **aad_auth_enabled** | bool |  `True`  |  -  |  Whether to enable AAD auth? Defaults to `true`. | 
| **tls_client_cert_enabled** | bool |  `False`  |  -  |  Whether to request client certificate during TLS handshake? Defaults to `false`. | 

### `live_trace` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | No | True | Whether the live trace is enabled? Defaults to 'true'. |
| `messaging_logs_enabled` | bool | No | True | Whether the log category 'MessagingLogs' is enabled? Defaults to 'true' |
| `connectivity_logs_enabled` | bool | No | True | Whether the log category 'ConnectivityLogs' is enabled? Defaults to 'true' |
| `http_request_logs_enabled` | bool | No | True | Whether the log category 'HttpRequestLogs' is enabled? Defaults to 'true' |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Web PubSub. Possible values are 'SystemAssigned', 'UserAssigned'. |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Web PubSub. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Web PubSub service. | 
| **hostname** | string | No  | The FQDN of the Web PubSub service. | 
| **identity** | block | No  | An `identity` block. | 
| **external_ip** | string | No  | The publicly accessible IP of the Web PubSub service. | 
| **public_port** | string | No  | The publicly accessible port of the Web PubSub service which is designed for browser/client use. | 
| **server_port** | string | No  | The publicly accessible port of the Web PubSub service which is designed for customer server side use. | 
| **primary_access_key** | string | Yes  | The primary access key for the Web PubSub service. | 
| **primary_connection_string** | string | No  | The primary connection string for the Web PubSub service. | 
| **secondary_access_key** | string | Yes  | The secondary access key for the Web PubSub service. | 
| **secondary_connection_string** | string | No  | The secondary connection string for the Web PubSub service. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
