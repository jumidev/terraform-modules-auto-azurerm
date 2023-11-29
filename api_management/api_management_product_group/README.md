# azurerm_api_management_product_group

Manages an API Management Product Assignment to a Group.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **product_id** | string | True | -  |  -  | The ID of the API Management Product within the API Management Service. Changing this forces a new resource to be created. | 
| **group_name** | string | True | -  |  -  | The Name of the API Management Group within the API Management Service. Changing this forces a new resource to be created. | 
| **api_management_name** | string | True | -  |  -  | The name of the API Management Service. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 

