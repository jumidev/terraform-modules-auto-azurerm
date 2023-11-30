# azurerm_api_management_gateway_api

Manages a API Management Gateway API.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.gateway_id** | string | True | The Identifier for the API Management Gateway. Changing this forces a new API Management Gateway API to be created. | 
| **var.api_id** | string | True | The Identifier of the API Management API within the API Management Service. Changing this forces a new API Management Gateway API to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **gateway_id** | string  | - | 
| **api_id** | string  | - | 
| **id** | string  | The ID of the API Management Gateway API. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_gateway_api" 
}

inputs = {
   gateway_id = "gateway_id of api_management_gateway_api" 
   api_id = "api_id of api_management_gateway_api" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```