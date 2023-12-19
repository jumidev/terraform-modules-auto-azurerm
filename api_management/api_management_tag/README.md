# azurerm_api_management_tag

Manages a API Management Tag.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "api_management/api_management_tag"   
}

inputs = {
   # api_management_id → set in component_inputs
   name = "The name which should be used for this API Management Tag..."   
}

component_inputs = {
   api_management_id = "path/to/api_management_component:id"   
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
| **api_management_id** | string |  The ID of the API Management. Changing this forces a new API Management Tag to be created. | 
| **name** | string |  The name which should be used for this API Management Tag. Changing this forces a new API Management Tag to be created. The name must be unique in the API Management Service. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **display_name** | string |  `name`  |  The display name of the API Management Tag. Defaults to the `name`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Tag. | 

Additionally, all variables are provided as outputs.
