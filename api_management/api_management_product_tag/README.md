# azurerm_api_management_product_tag

Manages an API Management Product tag

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.api_management_name** | string | True | -  |  -  | The name of the API Management Service. Changing this forces a new resource to be created. | 
| **var.api_management_product_id** | string | True | -  |  -  | The name of the API Management product. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which the API Management Service should be exist. Changing this forces a new resource to be created. | 
| **var.name** | string | True | -  |  -  | The name which should be used for this API Management Tag. Changing this forces a new API Management Tag to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **api_management_name** | string  | - | 
| **api_management_product_id** | string  | - | 
| **resource_group_name** | string  | - | 
| **name** | string  | - | 
| **id** | string  | The ID of the API Management Product. | 