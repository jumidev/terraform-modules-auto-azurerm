# azurerm_signalr_service

Manages an Azure SignalR service.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "messaging/signalr_service"   
}

inputs = {
   name = "The name of the SignalR service"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   sku = {
      name = "..."      
      capacity = "..."      
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
| **name** | string |  The name of the SignalR service. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group in which to create the SignalR service. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the SignalR service exists. Changing this forces a new resource to be created. | 
| **sku** | [block](#sku-block-structure) |  A `sku` block. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **cors** | [block](#cors-block-structure) |  -  |  -  |  A `cors` block. | 
| **connectivity_logs_enabled** | bool |  `False`  |  -  |  Specifies if Connectivity Logs are enabled or not. Defaults to `false`. | 
| **messaging_logs_enabled** | bool |  `False`  |  -  |  Specifies if Messaging Logs are enabled or not. Defaults to `false`. | 
| **http_request_logs_enabled** | bool |  `False`  |  -  |  Specifies if Http Request Logs are enabled or not. Defaults to `false`. | 
| **live_trace_enabled** | bool |  `False`  |  -  |  Specifies if Live Trace is enabled or not. Defaults to `false`. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **public_network_access_enabled** | bool |  `True`  |  -  |  Whether to enable public network access? Defaults to `true`. | 
| **local_auth_enabled** | bool |  `True`  |  -  |  Whether to enable local auth? Defaults to `true`. | 
| **aad_auth_enabled** | bool |  `True`  |  -  |  Whether to enable AAD auth? Defaults to `true`. | 
| **tls_client_cert_enabled** | bool |  `False`  |  -  |  Whether to request client certificate during TLS handshake? Defaults to `false`. | 
| **serverless_connection_timeout_in_seconds** | string |  `30`  |  -  |  Specifies the client connection timeout. Defaults to `30`. | 
| **service_mode** | string |  `Default`  |  `Classic`, `Default`, `Serverless`  |  Specifies the service mode. Possible values are `Classic`, `Default` and `Serverless`. Defaults to `Default`. | 
| **upstream_endpoint** | [block](#upstream_endpoint-block-structure) |  -  |  -  |  An `upstream_endpoint` block. Using this block requires the SignalR service to be Serverless. When creating multiple blocks they will be processed in the order they are defined in. | 
| **live_trace** | [block](#live_trace-block-structure) |  -  |  -  |  A `live_trace` block. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 

### `upstream_endpoint` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `url_template` | string | Yes | - | The upstream URL Template. This can be a url or a template such as 'http://host.com/{hub}/api/{category}/{event}'. |
| `category_pattern` | string | Yes | - | The categories to match on, or '*' for all. |
| `event_pattern` | string | Yes | - | The events to match on, or '*' for all. |
| `hub_pattern` | string | Yes | - | The hubs to match on, or '*' for all. |
| `user_assigned_identity_id` | string | No | - | Specifies the Managed Identity IDs to be assigned to this signalR upstream setting by using resource uuid as both system assigned and user assigned identity is supported. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this signalR. Possible values are 'SystemAssigned', 'UserAssigned'. |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this signalR. |

### `live_trace` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | No | True | Whether the live trace is enabled? Defaults to 'true'. |
| `messaging_logs_enabled` | bool | No | True | Whether the log category 'MessagingLogs' is enabled? Defaults to 'true' |
| `connectivity_logs_enabled` | bool | No | True | Whether the log category 'ConnectivityLogs' is enabled? Defaults to 'true' |
| `http_request_logs_enabled` | bool | No | True | Whether the log category 'HttpRequestLogs' is enabled? Defaults to 'true' |

### `cors` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `allowed_origins` | string | Yes | - | A list of origins which should be able to make cross-origin calls. '*' can be used to allow all calls. |

### `sku` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Specifies which tier to use. Valid values are 'Free_F1', 'Standard_S1' and 'Premium_P1'. |
| `capacity` | string | Yes | - | Specifies the number of units associated with this SignalR service. Valid values are '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '20', '30', '40', '50', '60', '70', '80', '90' and '100'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the SignalR service. | 
| **hostname** | string | No  | The FQDN of the SignalR service. | 
| **ip_address** | string | No  | The publicly accessible IP of the SignalR service. | 
| **public_port** | string | No  | The publicly accessible port of the SignalR service which is designed for browser/client use. | 
| **server_port** | string | No  | The publicly accessible port of the SignalR service which is designed for customer server side use. | 
| **primary_access_key** | string | Yes  | The primary access key for the SignalR service. | 
| **primary_connection_string** | string | No  | The primary connection string for the SignalR service. | 
| **secondary_access_key** | string | Yes  | The secondary access key for the SignalR service. | 
| **secondary_connection_string** | string | No  | The secondary connection string for the SignalR service. | 

Additionally, all variables are provided as outputs.
