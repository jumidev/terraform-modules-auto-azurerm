# azurerm_api_management_gateway_api

Manages a API Management Gateway API.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "api_management/api_management_gateway_api"   
}

inputs = {
   # gateway_id → set in component_inputs
   # api_id → set in component_inputs
}

component_inputs = {
   gateway_id = "path/to/api_management_gateway_component:id"   
   api_id = "path/to/api_management_component:id"   
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
| **gateway_id** | string |  The Identifier for the API Management Gateway. Changing this forces a new API Management Gateway API to be created. | 
| **api_id** | string |  The Identifier of the API Management API within the API Management Service. Changing this forces a new API Management Gateway API to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Gateway API. | 

Additionally, all variables are provided as outputs.
