# azurerm_api_management_group_user

Manages an API Management User Assignment to a Group.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_group_user" 
}

inputs = {
   user_id = "user_id of api_management_group_user" 
   group_name = "group_name of api_management_group_user" 
   # api_management_name → set in tfstate_inputs
   resource_group_name = "${resource_group}" 
}

tfstate_inputs = {
   api_management_name = "path/to/api_management_component:name" 
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
| **user_id** | string |  The ID of the API Management User which should be assigned to this API Management Group. Changing this forces a new resource to be created. | 
| **group_name** | string |  The Name of the API Management Group within the API Management Service. Changing this forces a new resource to be created. | 
| **api_management_name** | string |  The name of the API Management Service. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Group User. | 

Additionally, all variables are provided as outputs.
