# azurerm_api_management_gateway_host_name_configuration

Manages an API Management Gateway Host Name Configuration.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the API Management Gateway Host Name Configuration. Changing this forces a new resource to be created. | 
| **api_management_id** | string | True | -  |  -  | The ID of the API Management Service. Changing this forces a new resource to be created. | 
| **gateway_name** | string | True | -  |  -  | The name of the API Management Gateway. Changing this forces a new resource to be created. | 
| **certificate_id** | string | True | -  |  -  | The certificate ID to be used for TLS connection establishment. | 
| **host_name** | string | True | -  |  -  | The host name to use for the API Management Gateway Host Name Configuration. | 
| **request_client_certificate_enabled** | bool | False | -  |  -  | Whether the API Management Gateway requests a client certificate. | 
| **http2_enabled** | bool | False | `True`  |  -  | Whether HTTP/2.0 is supported. Defaults to `true`. | 
| **tls10_enabled** | bool | False | -  |  -  | Whether TLS 1.0 is supported. | 
| **tls11_enabled** | bool | False | -  |  -  | Whether TLS 1.1 is supported. | 

