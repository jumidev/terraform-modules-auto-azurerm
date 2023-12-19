# azurerm_api_management_gateway_host_name_configuration

Manages an API Management Gateway Host Name Configuration.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "api_management/api_management_gateway_host_name_configuration"   
}

inputs = {
   name = "The name of the API Management Gateway Host Name Configuration..."   
   # api_management_id → set in component_inputs
   gateway_name = "The name of the API Management Gateway"   
   certificate_id = "The certificate ID to be used for TLS connection establishment..."   
   host_name = "The host name to use for the API Management Gateway Host Name Configuration..."   
}

component_inputs = {
   api_management_id = "path/to/api_management_component:id"   
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
| **name** | string |  The name of the API Management Gateway Host Name Configuration. Changing this forces a new resource to be created. | 
| **api_management_id** | string |  The ID of the API Management Service. Changing this forces a new resource to be created. | 
| **gateway_name** | string |  The name of the API Management Gateway. Changing this forces a new resource to be created. | 
| **certificate_id** | string |  The certificate ID to be used for TLS connection establishment. | 
| **host_name** | string |  The host name to use for the API Management Gateway Host Name Configuration. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **request_client_certificate_enabled** | bool |  -  |  Whether the API Management Gateway requests a client certificate. | 
| **http2_enabled** | bool |  `True`  |  Whether HTTP/2.0 is supported. Defaults to `true`. | 
| **tls10_enabled** | bool |  -  |  Whether TLS 1.0 is supported. | 
| **tls11_enabled** | bool |  -  |  Whether TLS 1.1 is supported. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Gateway Host Name Configuration. | 

Additionally, all variables are provided as outputs.
