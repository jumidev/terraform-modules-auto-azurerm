# azurerm_api_management_identity_provider_facebook

Manages an API Management Facebook Identity Provider.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **api_management_name** | string | True | -  |  -  | The Name of the API Management Service where this Facebook Identity Provider should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created. | 
| **app_id** | string | True | -  |  -  | App ID for Facebook. | 
| **app_secret** | string | True | -  |  -  | App Secret for Facebook. | 

