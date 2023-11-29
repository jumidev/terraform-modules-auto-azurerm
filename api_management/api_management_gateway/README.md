# azurerm_api_management_gateway

Manages an API Management Gateway.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for the API Management Gateway. Changing this forces a new API Management Gateway to be created. | 
| **api_management_id** | string | True | -  |  -  | The ID of the API Management Resource in which the gateway will be created. Changing this forces a new API Management Gateway resource to be created. | 
| **location_data** | block | True | -  |  -  | A `location_data` block. | 
| **description** | string | False | -  |  -  | The description of the API Management Gateway. | 

