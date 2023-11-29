# azurerm_api_management_user

Manages an API Management User.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **api_management_name** | string | True | -  |  -  | The name of the API Management Service in which the User should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 
| **email** | string | True | -  |  -  | The email address associated with this user. | 
| **first_name** | string | True | -  |  -  | The first name for this user. | 
| **last_name** | string | True | -  |  -  | The last name for this user. | 
| **user_id** | string | True | -  |  -  | The Identifier for this User, which must be unique within the API Management Service. Changing this forces a new resource to be created. | 
| **confirmation** | string | False | -  |  `invite`, `signup`  | The kind of confirmation email which will be sent to this user. Possible values are `invite` and `signup`. Changing this forces a new resource to be created. | 
| **note** | string | False | -  |  -  | A note about this user. | 
| **password** | string | False | -  |  -  | The password associated with this user. | 
| **state** | string | False | -  |  `active`, `blocked`, `pending`  | The state of this user. Possible values are `active`, `blocked` and `pending`. | 

