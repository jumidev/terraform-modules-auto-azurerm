# azurerm_api_management_tag

Manages a API Management Tag.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **api_management_id** | string | True | -  |  -  | The ID of the API Management. Changing this forces a new API Management Tag to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this API Management Tag. Changing this forces a new API Management Tag to be created. The name must be unique in the API Management Service. | 
| **display_name** | string | False | `name`  |  -  | The display name of the API Management Tag. Defaults to the `name`. | 

