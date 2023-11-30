# azurerm_signalr_service

Manages an Azure SignalR service.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "messaging/signalr_service" 
}

inputs = {
   name = "name of signalr_service" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   sku = "sku of signalr_service" 
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
| **var.name** | string | True | -  |  -  |  The name of the SignalR service. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the SignalR service. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the SignalR service exists. Changing this forces a new resource to be created. | 
| **var.sku** | block | True | -  |  -  |  A `sku` block. | | `sku` block structure: || 
|   name (string): (REQUIRED) Specifies which tier to use. Valid values are 'Free_F1', 'Standard_S1' and 'Premium_P1'. ||
|   capacity (string): (REQUIRED) Specifies the number of units associated with this SignalR service. Valid values are '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '20', '30', '40', '50', '60', '70', '80', '90' and '100'. ||

| **var.cors** | block | False | -  |  -  |  A `cors` block. | | `cors` block structure: || 
|   allowed_origins (list): (REQUIRED) A list of origins which should be able to make cross-origin calls. '*' can be used to allow all calls. ||

| **var.connectivity_logs_enabled** | bool | False | `False`  |  -  |  Specifies if Connectivity Logs are enabled or not. Defaults to `false`. | 
| **var.messaging_logs_enabled** | bool | False | `False`  |  -  |  Specifies if Messaging Logs are enabled or not. Defaults to `false`. | 
| **var.http_request_logs_enabled** | bool | False | `False`  |  -  |  Specifies if Http Request Logs are enabled or not. Defaults to `false`. | 
| **var.live_trace_enabled** | bool | False | `False`  |  -  |  Specifies if Live Trace is enabled or not. Defaults to `false`. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | | `identity` block structure: || 
|   type (string): (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this signalR. Possible values are 'SystemAssigned', 'UserAssigned'. ||
|   identity_ids (string): Specifies a list of User Assigned Managed Identity IDs to be assigned to this signalR. ||

| **var.public_network_access_enabled** | bool | False | `True`  |  -  |  Whether to enable public network access? Defaults to `true`. | 
| **var.local_auth_enabled** | bool | False | `True`  |  -  |  Whether to enable local auth? Defaults to `true`. | 
| **var.aad_auth_enabled** | bool | False | `True`  |  -  |  Whether to enable AAD auth? Defaults to `true`. | 
| **var.tls_client_cert_enabled** | bool | False | `False`  |  -  |  Whether to request client certificate during TLS handshake? Defaults to `false`. | 
| **var.serverless_connection_timeout_in_seconds** | int | False | `30`  |  -  |  Specifies the client connection timeout. Defaults to `30`. | 
| **var.service_mode** | string | False | `Default`  |  `Classic`, `Default`, `Serverless`  |  Specifies the service mode. Possible values are `Classic`, `Default` and `Serverless`. Defaults to `Default`. | 
| **var.upstream_endpoint** | block | False | -  |  -  |  An `upstream_endpoint` block. Using this block requires the SignalR service to be Serverless. When creating multiple blocks they will be processed in the order they are defined in. | | `upstream_endpoint` block structure: || 
|   url_template (string): (REQUIRED) The upstream URL Template. This can be a url or a template such as 'http://host.com/{hub}/api/{category}/{event}'. ||
|   category_pattern (string): (REQUIRED) The categories to match on, or '*' for all. ||
|   event_pattern (string): (REQUIRED) The events to match on, or '*' for all. ||
|   hub_pattern (string): (REQUIRED) The hubs to match on, or '*' for all. ||
|   user_assigned_identity_id (string): Specifies the Managed Identity IDs to be assigned to this signalR upstream setting by using resource uuid as both system assigned and user assigned identity is supported. ||

| **var.live_trace** | block | False | -  |  -  |  A `live_trace` block. | | `live_trace` block structure: || 
|   enabled (bool): Whether the live trace is enabled? Defaults to 'true'. ||
|   messaging_logs_enabled (bool): Whether the log category 'MessagingLogs' is enabled? Defaults to 'true' ||
|   connectivity_logs_enabled (bool): Whether the log category 'ConnectivityLogs' is enabled? Defaults to 'true' ||
|   http_request_logs_enabled (bool): Whether the log category 'HttpRequestLogs' is enabled? Defaults to 'true' ||

| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the SignalR service. | 
| **hostname** | string | No  | The FQDN of the SignalR service. | 
| **ip_address** | string | No  | The publicly accessible IP of the SignalR service. | 
| **public_port** | string | No  | The publicly accessible port of the SignalR service which is designed for browser/client use. | 
| **server_port** | string | No  | The publicly accessible port of the SignalR service which is designed for customer server side use. | 
| **primary_access_key** | string | No  | The primary access key for the SignalR service. | 
| **primary_connection_string** | string | No  | The primary connection string for the SignalR service. | 
| **secondary_access_key** | string | No  | The secondary access key for the SignalR service. | 
| **secondary_connection_string** | string | No  | The secondary connection string for the SignalR service. | 

Additionally, all variables are provided as outputs.
