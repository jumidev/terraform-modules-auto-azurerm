# azurerm_api_management_product_tag

Manages an API Management Product tag

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "api_management/api_management_product_tag"   
}

inputs = {
   # api_management_name → set in tfstate_inputs
   # api_management_product_id → set in tfstate_inputs
   resource_group_name = "${resource_group}"   
   name = "name of api_management_product_tag"   
}

tfstate_inputs = {
   api_management_name = "path/to/api_management_component:name"   
   api_management_product_id = "path/to/api_management_product_component:id"   
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
| **api_management_name** | string |  The name of the API Management Service. Changing this forces a new resource to be created. | 
| **api_management_product_id** | string |  The name of the API Management product. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group in which the API Management Service should be exist. Changing this forces a new resource to be created. | 
| **name** | string |  The name which should be used for this API Management Tag. Changing this forces a new API Management Tag to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Product. | 

Additionally, all variables are provided as outputs.
