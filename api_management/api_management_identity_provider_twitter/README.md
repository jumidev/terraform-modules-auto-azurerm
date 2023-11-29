# azurerm_api_management_identity_provider_twitter

Manages an API Management Twitter Identity Provider.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **api_management_name** | string | True | -  |  -  | The Name of the API Management Service where this Twitter Identity Provider should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created. | 
| **api_key** | string | True | -  |  -  | App Consumer API key for Twitter. | 
| **api_secret_key** | string | True | -  |  -  | App Consumer API secret key for Twitter. | 

