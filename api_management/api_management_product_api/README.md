# azurerm_api_management_product_api

Manages an API Management API Assignment to a Product.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_product_api" 
}

inputs = {
   api_name = "api_name of api_management_product_api" 
   api_management_name = "api_management_name of api_management_product_api" 
   product_id = "product_id of api_management_product_api" 
   resource_group_name = "${resource_group}" 
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
| **var.api_name** | string  The Name of the API Management API within the API Management Service. Changing this forces a new resource to be created. | 
| **var.api_management_name** | string  The name of the API Management Service. Changing this forces a new resource to be created. | 
| **var.product_id** | string  The ID of the API Management Product within the API Management Service. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Product API. | 

Additionally, all variables are provided as outputs.
