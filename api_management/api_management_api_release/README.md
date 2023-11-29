# azurerm_api_management_api_release

Manages a API Management API Release.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this API Management API Release. Changing this forces a new API Management API Release to be created. | 
| **var.api_id** | string | True | -  |  -  | The ID of the API Management API. Changing this forces a new API Management API Release to be created. | 
| **var.notes** | string | False | -  |  -  | The Release Notes. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **api_id** | string  | - | 
| **notes** | string  | - | 
| **id** | string  | The ID of the API Management API Release. | 