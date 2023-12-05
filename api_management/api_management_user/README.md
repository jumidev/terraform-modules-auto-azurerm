# azurerm_api_management_user

Manages an API Management User.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "api_management/api_management_user"   
}

inputs = {
   # api_management_name → set in tfstate_inputs
   resource_group_name = "${resource_group}"   
   email = "email of api_management_user"   
   first_name = "first_name of api_management_user"   
   last_name = "last_name of api_management_user"   
   user_id = "user_id of api_management_user"   
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
| **api_management_name** | string |  The name of the API Management Service in which the User should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 
| **email** | string |  The email address associated with this user. | 
| **first_name** | string |  The first name for this user. | 
| **last_name** | string |  The last name for this user. | 
| **user_id** | string |  The Identifier for this User, which must be unique within the API Management Service. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **confirmation** | string |  `invite`, `signup`  |  The kind of confirmation email which will be sent to this user. Possible values are `invite` and `signup`. Changing this forces a new resource to be created. | 
| **note** | string |  -  |  A note about this user. | 
| **password** | string |  -  |  The password associated with this user. | 
| **state** | string |  `active`, `blocked`, `pending`  |  The state of this user. Possible values are `active`, `blocked` and `pending`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management User. | 

Additionally, all variables are provided as outputs.
