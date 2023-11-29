# azurerm_api_management_tag

Manages a API Management Tag.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.api_management_id** | string | True | -  |  The ID of the API Management. Changing this forces a new API Management Tag to be created. | 
| **var.name** | string | True | -  |  The name which should be used for this API Management Tag. Changing this forces a new API Management Tag to be created. The name must be unique in the API Management Service. | 
| **var.display_name** | string | False | `name`  |  The display name of the API Management Tag. Defaults to the `name`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **api_management_id** | string  | - | 
| **name** | string  | - | 
| **display_name** | string  | - | 
| **id** | string  | The ID of the API Management Tag. | 