# azurerm_api_management_identity_provider_microsoft

Manages an API Management Microsoft Identity Provider.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.api_management_name** | string | True | The Name of the API Management Service where this Microsoft Identity Provider should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.client_id** | string | True | Client Id of the Azure AD Application. | 
| **var.client_secret** | string | True | Client secret of the Azure AD Application. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **api_management_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **client_id** | string  | - | 
| **client_secret** | string  | - | 
| **id** | string  | The ID of the API Management Microsoft Identity Provider. | 