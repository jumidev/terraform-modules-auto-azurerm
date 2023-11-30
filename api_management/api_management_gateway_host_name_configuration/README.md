# azurerm_api_management_gateway_host_name_configuration

Manages an API Management Gateway Host Name Configuration.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_gateway_host_name_configuration" 
}

inputs = {
   name = "name of api_management_gateway_host_name_configuration" 
   api_management_id = "api_management_id of api_management_gateway_host_name_configuration" 
   gateway_name = "gateway_name of api_management_gateway_host_name_configuration" 
   certificate_id = "certificate_id of api_management_gateway_host_name_configuration" 
   host_name = "host_name of api_management_gateway_host_name_configuration" 
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
| **var.name** | string  The name of the API Management Gateway Host Name Configuration. Changing this forces a new resource to be created. | 
| **var.api_management_id** | string  The ID of the API Management Service. Changing this forces a new resource to be created. | 
| **var.gateway_name** | string  The name of the API Management Gateway. Changing this forces a new resource to be created. | 
| **var.certificate_id** | string  The certificate ID to be used for TLS connection establishment. | 
| **var.host_name** | string  The host name to use for the API Management Gateway Host Name Configuration. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.request_client_certificate_enabled** | bool  -  |  Whether the API Management Gateway requests a client certificate. | 
| **var.http2_enabled** | bool  `True`  |  Whether HTTP/2.0 is supported. Defaults to `true`. | 
| **var.tls10_enabled** | bool  -  |  Whether TLS 1.0 is supported. | 
| **var.tls11_enabled** | bool  -  |  Whether TLS 1.1 is supported. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Gateway Host Name Configuration. | 

Additionally, all variables are provided as outputs.
