# azurerm_web_pubsub

Manages an Azure Web PubSub Service.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/web_pubsub" 
}

inputs = {
   name = "name of web_pubsub" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   sku = "sku of web_pubsub" 
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
| **var.name** | string | True | -  |  -  |  The name of the Web PubSub service. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the Web PubSub service. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the Web PubSub service exists. Changing this forces a new resource to be created. | 
| **var.sku** | string | True | -  |  `Free_F1`, `Standard_S1`, `Premium_P1`  |  Specifies which SKU to use. Possible values are `Free_F1`, `Standard_S1`, and `Premium_P1`. | 
| **var.capacity** | string | False | -  |  `1`, `2`, `5`, `10`, `20`, `50`, `100`  |  Specifies the number of units associated with this Web PubSub resource. Valid values are: Free: `1`, Standard: `1`, `2`, `5`, `10`, `20`, `50`, `100`. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  -  |  Whether to enable public network access? Defaults to `true`. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 
| **var.live_trace** | block | False | -  |  -  |  A `live_trace` block. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| **var.local_auth_enabled** | bool | False | `True`  |  -  |  Whether to enable local auth? Defaults to `true`. | 
| **var.aad_auth_enabled** | bool | False | `True`  |  -  |  Whether to enable AAD auth? Defaults to `true`. | 
| **var.tls_client_cert_enabled** | bool | False | `False`  |  -  |  Whether to request client certificate during TLS handshake? Defaults to `false`. | 

### `live_trace` block structure

>`enabled` (bool): Whether the live trace is enabled? Defaults to 'true'.
>`messaging_logs_enabled` (bool): Whether the log category 'MessagingLogs' is enabled? Defaults to 'true'
>`connectivity_logs_enabled` (bool): Whether the log category 'ConnectivityLogs' is enabled? Defaults to 'true'
>`http_request_logs_enabled` (bool): Whether the log category 'HttpRequestLogs' is enabled? Defaults to 'true'

### `identity` block structure

>`type` (string): (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Web PubSub. Possible values are 'SystemAssigned', 'UserAssigned'.
>`identity_ids` (string): Specifies a list of User Assigned Managed Identity IDs to be assigned to this Web PubSub.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Web PubSub service. | 
| **hostname** | string | No  | The FQDN of the Web PubSub service. | 
| **identity** | block | No  | An `identity` block. | 
| **external_ip** | string | No  | The publicly accessible IP of the Web PubSub service. | 
| **public_port** | string | No  | The publicly accessible port of the Web PubSub service which is designed for browser/client use. | 
| **server_port** | string | No  | The publicly accessible port of the Web PubSub service which is designed for customer server side use. | 
| **primary_access_key** | string | No  | The primary access key for the Web PubSub service. | 
| **primary_connection_string** | string | No  | The primary connection string for the Web PubSub service. | 
| **secondary_access_key** | string | No  | The secondary access key for the Web PubSub service. | 
| **secondary_connection_string** | string | No  | The secondary connection string for the Web PubSub service. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
