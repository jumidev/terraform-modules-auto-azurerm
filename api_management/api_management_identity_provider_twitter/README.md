# azurerm_api_management_identity_provider_twitter

Manages an API Management Twitter Identity Provider.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.api_management_name** | string | True | The Name of the API Management Service where this Twitter Identity Provider should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.api_key** | string | True | App Consumer API key for Twitter. | 
| **var.api_secret_key** | string | True | App Consumer API secret key for Twitter. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **api_management_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **api_key** | string  | - | 
| **api_secret_key** | string  | - | 
| **id** | string  | The ID of the API Management Twitter Identity Provider. | 