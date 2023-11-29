# azurerm_api_management_product_api

Manages an API Management API Assignment to a Product.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.api_name** | string | True | -  |  -  | The Name of the API Management API within the API Management Service. Changing this forces a new resource to be created. | 
| **var.api_management_name** | string | True | -  |  -  | The name of the API Management Service. Changing this forces a new resource to be created. | 
| **var.product_id** | string | True | -  |  -  | The ID of the API Management Product within the API Management Service. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **api_name** | string  | - | 
| **api_management_name** | string  | - | 
| **product_id** | string  | - | 
| **resource_group_name** | string  | - | 
| **id** | string  | The ID of the API Management Product API. | 