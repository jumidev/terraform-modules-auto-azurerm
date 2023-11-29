# azurerm_api_management_user

Manages an API Management User.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.api_management_name** | string | True | -  |  -  | The name of the API Management Service in which the User should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.email** | string | True | -  |  -  | The email address associated with this user. | 
| **var.first_name** | string | True | -  |  -  | The first name for this user. | 
| **var.last_name** | string | True | -  |  -  | The last name for this user. | 
| **var.user_id** | string | True | -  |  -  | The Identifier for this User, which must be unique within the API Management Service. Changing this forces a new resource to be created. | 
| **var.confirmation** | string | False | -  |  `invite`, `signup`  | The kind of confirmation email which will be sent to this user. Possible values are `invite` and `signup`. Changing this forces a new resource to be created. | 
| **var.note** | string | False | -  |  -  | A note about this user. | 
| **var.password** | string | False | -  |  -  | The password associated with this user. | 
| **var.state** | string | False | -  |  `active`, `blocked`, `pending`  | The state of this user. Possible values are `active`, `blocked` and `pending`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **api_management_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **email** | string  | - | 
| **first_name** | string  | - | 
| **last_name** | string  | - | 
| **user_id** | string  | - | 
| **confirmation** | string  | - | 
| **note** | string  | - | 
| **password** | string  | - | 
| **state** | string  | - | 
| **id** | string  | The ID of the API Management User. | 