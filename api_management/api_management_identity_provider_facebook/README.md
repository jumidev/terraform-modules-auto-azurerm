# azurerm_api_management_identity_provider_facebook

Manages an API Management Facebook Identity Provider.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.api_management_name** | string | True | The Name of the API Management Service where this Facebook Identity Provider should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.app_id** | string | True | App ID for Facebook. | 
| **var.app_secret** | string | True | App Secret for Facebook. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **api_management_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **app_id** | string  | - | 
| **app_secret** | string  | - | 
| **id** | string  | The ID of the API Management Facebook Identity Provider. | 