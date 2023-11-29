# azurerm_api_management_gateway_host_name_configuration

Manages an API Management Gateway Host Name Configuration.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the API Management Gateway Host Name Configuration. Changing this forces a new resource to be created. | 
| **var.api_management_id** | string | True | -  |  -  | The ID of the API Management Service. Changing this forces a new resource to be created. | 
| **var.gateway_name** | string | True | -  |  -  | The name of the API Management Gateway. Changing this forces a new resource to be created. | 
| **var.certificate_id** | string | True | -  |  -  | The certificate ID to be used for TLS connection establishment. | 
| **var.host_name** | string | True | -  |  -  | The host name to use for the API Management Gateway Host Name Configuration. | 
| **var.request_client_certificate_enabled** | bool | False | -  |  -  | Whether the API Management Gateway requests a client certificate. | 
| **var.http2_enabled** | bool | False | `True`  |  -  | Whether HTTP/2.0 is supported. Defaults to `true`. | 
| **var.tls10_enabled** | bool | False | -  |  -  | Whether TLS 1.0 is supported. | 
| **var.tls11_enabled** | bool | False | -  |  -  | Whether TLS 1.1 is supported. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **api_management_id** | string  | - | 
| **gateway_name** | string  | - | 
| **certificate_id** | string  | - | 
| **host_name** | string  | - | 
| **request_client_certificate_enabled** | bool  | - | 
| **http2_enabled** | bool  | - | 
| **tls10_enabled** | bool  | - | 
| **tls11_enabled** | bool  | - | 
| **id** | string  | The ID of the API Management Gateway Host Name Configuration. | 