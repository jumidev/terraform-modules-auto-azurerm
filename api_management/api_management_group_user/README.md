# azurerm_api_management_group_user

Manages an API Management User Assignment to a Group.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.user_id** | string | True | The ID of the API Management User which should be assigned to this API Management Group. Changing this forces a new resource to be created. | 
| **var.group_name** | string | True | The Name of the API Management Group within the API Management Service. Changing this forces a new resource to be created. | 
| **var.api_management_name** | string | True | The name of the API Management Service. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **user_id** | string  | - | 
| **group_name** | string  | - | 
| **api_management_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **id** | string  | The ID of the API Management Group User. | 