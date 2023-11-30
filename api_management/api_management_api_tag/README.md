# azurerm_api_management_api_tag

Manages the Assignment of an API Management API Tag to an API.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_api_tag" 
}

inputs = {
   api_id = "api_id of api_management_api_tag" 
   name = "name of api_management_api_tag" 
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
| **var.api_id** | string  The ID of the API Management API. Changing this forces a new API Management API Tag to be created. | 
| **var.name** | string  The name of the tag. It must be known in the API Management instance. Changing this forces a new API Management API Tag to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management API Tag. | 

Additionally, all variables are provided as outputs.
