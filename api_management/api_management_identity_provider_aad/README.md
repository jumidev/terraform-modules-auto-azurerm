# azurerm_api_management_identity_provider_aad

Manages an API Management AAD Identity Provider.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.api_management_name** | string | True | -  |  -  | The Name of the API Management Service where this AAD Identity Provider should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.client_id** | string | True | -  |  -  | Client Id of the Application in the AAD Identity Provider. | 
| **var.client_secret** | string | True | -  |  -  | Client secret of the Application in the AAD Identity Provider. | 
| **var.allowed_tenants** | string | True | -  |  -  | List of allowed AAD Tenants. | 
| **var.signin_tenant** | string | False | -  |  -  | The AAD Tenant to use instead of Common when logging into Active Directory | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **api_management_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **client_id** | string  | - | 
| **client_secret** | string  | - | 
| **allowed_tenants** | string  | - | 
| **signin_tenant** | string  | - | 
| **id** | string  | The ID of the API Management AAD Identity Provider. | 