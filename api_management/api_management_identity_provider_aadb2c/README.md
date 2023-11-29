# azurerm_api_management_identity_provider_aadb2c

Manages an API Management Azure AD B2C Identity Provider.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.api_management_name** | string | True | The Name of the API Management Service where this AAD Identity Provider should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.client_id** | string | True | Client ID of the Application in your B2C tenant. | 
| **var.client_secret** | string | True | Client secret of the Application in your B2C tenant. | 
| **var.allowed_tenant** | string | True | The allowed AAD tenant, usually your B2C tenant domain. | 
| **var.signin_tenant** | string | True | The tenant to use instead of Common when logging into Active Directory, usually your B2C tenant domain. | 
| **var.authority** | string | True | OpenID Connect discovery endpoint hostname, usually your b2clogin.com domain. | 
| **var.signin_policy** | string | True | Signin Policy Name. | 
| **var.signup_policy** | string | True | Signup Policy Name. | 
| **var.password_reset_policy** | string | False | Password reset Policy Name. | 
| **var.profile_editing_policy** | string | False | Profile editing Policy Name. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **api_management_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **client_id** | string  | - | 
| **client_secret** | string  | - | 
| **allowed_tenant** | string  | - | 
| **signin_tenant** | string  | - | 
| **authority** | string  | - | 
| **signin_policy** | string  | - | 
| **signup_policy** | string  | - | 
| **password_reset_policy** | string  | - | 
| **profile_editing_policy** | string  | - | 
| **id** | string  | The ID of the API Management Azure AD B2C Identity Provider Resource. | 