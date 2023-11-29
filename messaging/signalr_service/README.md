# azurerm_signalr_service

Manages an Azure SignalR service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the SignalR service. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the SignalR service. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the SignalR service exists. Changing this forces a new resource to be created. | 
| **sku** | block | True | -  |  -  | A `sku` block. | 
| **cors** | block | False | -  |  -  | A `cors` block. | 
| **connectivity_logs_enabled** | bool | False | `False`  |  -  | Specifies if Connectivity Logs are enabled or not. Defaults to `false`. | 
| **messaging_logs_enabled** | bool | False | `False`  |  -  | Specifies if Messaging Logs are enabled or not. Defaults to `false`. | 
| **http_request_logs_enabled** | bool | False | `False`  |  -  | Specifies if Http Request Logs are enabled or not. Defaults to `false`. | 
| **live_trace_enabled** | bool | False | `False`  |  -  | Specifies if Live Trace is enabled or not. Defaults to `false`. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **public_network_access_enabled** | bool | False | `True`  |  -  | Whether to enable public network access? Defaults to `true`. | 
| **local_auth_enabled** | bool | False | `True`  |  -  | Whether to enable local auth? Defaults to `true`. | 
| **aad_auth_enabled** | bool | False | `True`  |  -  | Whether to enable AAD auth? Defaults to `true`. | 
| **tls_client_cert_enabled** | bool | False | `False`  |  -  | Whether to request client certificate during TLS handshake? Defaults to `false`. | 
| **serverless_connection_timeout_in_seconds** | int | False | `30`  |  -  | Specifies the client connection timeout. Defaults to `30`. | 
| **service_mode** | string | False | `Default`  |  `Classic`, `Default`, `Serverless`  | Specifies the service mode. Possible values are `Classic`, `Default` and `Serverless`. Defaults to `Default`. | 
| **upstream_endpoint** | block | False | -  |  -  | An `upstream_endpoint` block. Using this block requires the SignalR service to be Serverless. When creating multiple blocks they will be processed in the order they are defined in. | 
| **live_trace** | block | False | -  |  -  | A `live_trace` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

