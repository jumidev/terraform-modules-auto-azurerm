# azurerm_signalr_service

Manages an Azure SignalR service.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the SignalR service. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  The name of the resource group in which to create the SignalR service. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  Specifies the supported Azure location where the SignalR service exists. Changing this forces a new resource to be created. | 
| **var.sku** | block | True | -  |  -  |  A `sku` block. | 
| **var.cors** | block | False | -  |  -  |  A `cors` block. | 
| **var.connectivity_logs_enabled** | bool | False | `False`  |  -  |  Specifies if Connectivity Logs are enabled or not. Defaults to `false`. | 
| **var.messaging_logs_enabled** | bool | False | `False`  |  -  |  Specifies if Messaging Logs are enabled or not. Defaults to `false`. | 
| **var.http_request_logs_enabled** | bool | False | `False`  |  -  |  Specifies if Http Request Logs are enabled or not. Defaults to `false`. | 
| **var.live_trace_enabled** | bool | False | `False`  |  -  |  Specifies if Live Trace is enabled or not. Defaults to `false`. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  -  |  Whether to enable public network access? Defaults to `true`. | 
| **var.local_auth_enabled** | bool | False | `True`  |  -  |  Whether to enable local auth? Defaults to `true`. | 
| **var.aad_auth_enabled** | bool | False | `True`  |  -  |  Whether to enable AAD auth? Defaults to `true`. | 
| **var.tls_client_cert_enabled** | bool | False | `False`  |  -  |  Whether to request client certificate during TLS handshake? Defaults to `false`. | 
| **var.serverless_connection_timeout_in_seconds** | int | False | `30`  |  -  |  Specifies the client connection timeout. Defaults to `30`. | 
| **var.service_mode** | string | False | `Default`  |  `Classic`, `Default`, `Serverless`  |  Specifies the service mode. Possible values are `Classic`, `Default` and `Serverless`. Defaults to `Default`. | 
| **var.upstream_endpoint** | block | False | -  |  -  |  An `upstream_endpoint` block. Using this block requires the SignalR service to be Serverless. When creating multiple blocks they will be processed in the order they are defined in. | 
| **var.live_trace** | block | False | -  |  -  |  A `live_trace` block. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **sku** | block  | - | 
| **cors** | block  | - | 
| **connectivity_logs_enabled** | bool  | - | 
| **messaging_logs_enabled** | bool  | - | 
| **http_request_logs_enabled** | bool  | - | 
| **live_trace_enabled** | bool  | - | 
| **identity** | block  | - | 
| **public_network_access_enabled** | bool  | - | 
| **local_auth_enabled** | bool  | - | 
| **aad_auth_enabled** | bool  | - | 
| **tls_client_cert_enabled** | bool  | - | 
| **serverless_connection_timeout_in_seconds** | int  | - | 
| **service_mode** | string  | - | 
| **upstream_endpoint** | block  | - | 
| **live_trace** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the SignalR service. | 
| **hostname** | string  | The FQDN of the SignalR service. | 
| **ip_address** | string  | The publicly accessible IP of the SignalR service. | 
| **public_port** | string  | The publicly accessible port of the SignalR service which is designed for browser/client use. | 
| **server_port** | string  | The publicly accessible port of the SignalR service which is designed for customer server side use. | 
| **primary_access_key** | string  | The primary access key for the SignalR service. | 
| **primary_connection_string** | string  | The primary connection string for the SignalR service. | 
| **secondary_access_key** | string  | The secondary access key for the SignalR service. | 
| **secondary_connection_string** | string  | The secondary connection string for the SignalR service. | 

## Example minimal hclt

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