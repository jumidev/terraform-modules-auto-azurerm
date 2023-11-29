# azurerm_api_management_product_api

Manages an API Management API Assignment to a Product.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **api_name** | string | True | -  |  -  | The Name of the API Management API within the API Management Service. Changing this forces a new resource to be created. | 
| **api_management_name** | string | True | -  |  -  | The name of the API Management Service. Changing this forces a new resource to be created. | 
| **product_id** | string | True | -  |  -  | The ID of the API Management Product within the API Management Service. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 

