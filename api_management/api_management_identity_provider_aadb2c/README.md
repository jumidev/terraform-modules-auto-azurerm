# azurerm_api_management_identity_provider_aadb2c

Manages an API Management Azure AD B2C Identity Provider.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **api_management_name** | string | True | -  |  -  | The Name of the API Management Service where this AAD Identity Provider should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created. | 
| **client_id** | string | True | -  |  -  | Client ID of the Application in your B2C tenant. | 
| **client_secret** | string | True | -  |  -  | Client secret of the Application in your B2C tenant. | 
| **allowed_tenant** | string | True | -  |  -  | The allowed AAD tenant, usually your B2C tenant domain. | 
| **signin_tenant** | string | True | -  |  -  | The tenant to use instead of Common when logging into Active Directory, usually your B2C tenant domain. | 
| **authority** | string | True | -  |  -  | OpenID Connect discovery endpoint hostname, usually your b2clogin.com domain. | 
| **signin_policy** | string | True | -  |  -  | Signin Policy Name. | 
| **signup_policy** | string | True | -  |  -  | Signup Policy Name. | 
| **password_reset_policy** | string | False | -  |  -  | Password reset Policy Name. | 
| **profile_editing_policy** | string | False | -  |  -  | Profile editing Policy Name. | 

