# azurerm_api_management_gateway_api

Manages a API Management Gateway API.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.gateway_id** | string | True | -  |  -  | The Identifier for the API Management Gateway. Changing this forces a new API Management Gateway API to be created. | 
| **var.api_id** | string | True | -  |  -  | The Identifier of the API Management API within the API Management Service. Changing this forces a new API Management Gateway API to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **gateway_id** | string  | - | 
| **api_id** | string  | - | 
| **id** | string  | The ID of the API Management Gateway API. | 