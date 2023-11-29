# azurerm_api_management_api_tag

Manages the Assignment of an API Management API Tag to an API.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.api_id** | string | True | The ID of the API Management API. Changing this forces a new API Management API Tag to be created. | 
| **var.name** | string | True | The name of the tag. It must be known in the API Management instance. Changing this forces a new API Management API Tag to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **api_id** | string  | - | 
| **name** | string  | - | 
| **id** | string  | The ID of the API Management API Tag. | 