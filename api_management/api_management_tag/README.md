# azurerm_api_management_tag

Manages a API Management Tag.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.api_management_id** | string | True | -  |  The ID of the API Management. Changing this forces a new API Management Tag to be created. | 
| **var.name** | string | True | -  |  The name which should be used for this API Management Tag. Changing this forces a new API Management Tag to be created. The name must be unique in the API Management Service. | 
| **var.display_name** | string | False | `name`  |  The display name of the API Management Tag. Defaults to the `name`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **api_management_id** | string  | - | 
| **name** | string  | - | 
| **display_name** | string  | - | 
| **id** | string  | The ID of the API Management Tag. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_tag" 
}

inputs = {
   api_management_id = "api_management_id of api_management_tag" 
   name = "name of api_management_tag" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```