# azurerm_api_management_group_user

Manages an API Management User Assignment to a Group.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **user_id** | string | True | -  |  -  | The ID of the API Management User which should be assigned to this API Management Group. Changing this forces a new resource to be created. | 
| **group_name** | string | True | -  |  -  | The Name of the API Management Group within the API Management Service. Changing this forces a new resource to be created. | 
| **api_management_name** | string | True | -  |  -  | The name of the API Management Service. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 

