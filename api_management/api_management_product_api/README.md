# azurerm_api_management_product_api

Manages an API Management API Assignment to a Product.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "api_management/api_management_product_api"   
}

inputs = {
   api_name = "The Name of the API Management API within the API Management Service..."   
   # api_management_name → set in component_inputs
   # product_id → set in component_inputs
   resource_group_name = "${resource_group}"   
}

component_inputs = {
   api_management_name = "path/to/api_management_component:name"   
   product_id = "path/to/api_management_component:id"   
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
| **api_name** | string |  The Name of the API Management API within the API Management Service. Changing this forces a new resource to be created. | 
| **api_management_name** | string |  The name of the API Management Service. Changing this forces a new resource to be created. | 
| **product_id** | string |  The ID of the API Management Product within the API Management Service. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Product API. | 

Additionally, all variables are provided as outputs.
