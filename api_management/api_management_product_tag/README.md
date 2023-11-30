# azurerm_api_management_product_tag

Manages an API Management Product tag

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_product_tag" 
}

inputs = {
   api_management_name = "api_management_name of api_management_product_tag" 
   api_management_product_id = "api_management_product_id of api_management_product_tag" 
   resource_group_name = "${resource_group}" 
   name = "name of api_management_product_tag" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.api_management_name** | string | True | The name of the API Management Service. Changing this forces a new resource to be created. | 
| **var.api_management_product_id** | string | True | The name of the API Management product. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group in which the API Management Service should be exist. Changing this forces a new resource to be created. | 
| **var.name** | string | True | The name which should be used for this API Management Tag. Changing this forces a new API Management Tag to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Product. | 

Additionally, all variables are provided as outputs.
