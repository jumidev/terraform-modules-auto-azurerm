# azurerm_api_management_identity_provider_aad

Manages an API Management AAD Identity Provider.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **api_management_name** | string | True | -  |  -  | The Name of the API Management Service where this AAD Identity Provider should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created. | 
| **client_id** | string | True | -  |  -  | Client Id of the Application in the AAD Identity Provider. | 
| **client_secret** | string | True | -  |  -  | Client secret of the Application in the AAD Identity Provider. | 
| **allowed_tenants** | string | True | -  |  -  | List of allowed AAD Tenants. | 
| **signin_tenant** | string | False | -  |  -  | The AAD Tenant to use instead of Common when logging into Active Directory | 

