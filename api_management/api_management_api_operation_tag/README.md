# azurerm_api_management_api_operation_tag

Manages a API Management API Operation Tag.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.api_operation_id** | string | True | The ID of the API Management API Operation. Changing this forces a new API Management API Operation Tag to be created. | 
| **var.name** | string | True | The name which should be used for this API Management API Operation Tag. Changing this forces a new API Management API Operation Tag to be created. The name must be unique in the API Management Service. | 
| **var.display_name** | string | True | The display name of the API Management API Operation Tag. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **api_operation_id** | string  | - | 
| **name** | string  | - | 
| **display_name** | string  | - | 
| **id** | string  | The ID of the API Management API Operation Tag. | 