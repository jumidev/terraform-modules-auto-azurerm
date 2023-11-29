# azurerm_api_management_product_group

Manages an API Management Product Assignment to a Group.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.product_id** | string | True | The ID of the API Management Product within the API Management Service. Changing this forces a new resource to be created. | 
| **var.group_name** | string | True | The Name of the API Management Group within the API Management Service. Changing this forces a new resource to be created. | 
| **var.api_management_name** | string | True | The name of the API Management Service. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **product_id** | string  | - | 
| **group_name** | string  | - | 
| **api_management_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **id** | string  | The ID of the API Management Product Group. | 