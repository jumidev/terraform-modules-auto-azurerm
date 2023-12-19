# azurerm_api_management_api_operation_tag

Manages a API Management API Operation Tag.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "api_management/api_management_api_operation_tag"   
}

inputs = {
   # api_operation_id → set in component_inputs
   name = "The name which should be used for this API Management API Operation Tag..."   
   display_name = "The display name of the API Management API Operation Tag..."   
}

component_inputs = {
   api_operation_id = "path/to/api_management_api_operation_component:id"   
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
| **api_operation_id** | string |  The ID of the API Management API Operation. Changing this forces a new API Management API Operation Tag to be created. | 
| **name** | string |  The name which should be used for this API Management API Operation Tag. Changing this forces a new API Management API Operation Tag to be created. The name must be unique in the API Management Service. | 
| **display_name** | string |  The display name of the API Management API Operation Tag. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management API Operation Tag. | 

Additionally, all variables are provided as outputs.
