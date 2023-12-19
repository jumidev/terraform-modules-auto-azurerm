# azurerm_api_management_api_release

Manages a API Management API Release.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "api_management/api_management_api_release"   
}

inputs = {
   name = "The name which should be used for this API Management API Release..."   
   # api_id → set in component_inputs
}

component_inputs = {
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
| **name** | string |  The name which should be used for this API Management API Release. Changing this forces a new API Management API Release to be created. | 
| **api_id** | string |  The ID of the API Management API. Changing this forces a new API Management API Release to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **notes** | string |  The Release Notes. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management API Release. | 

Additionally, all variables are provided as outputs.
