# azurerm_api_management_identity_provider_aadb2c

Manages an API Management Azure AD B2C Identity Provider.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_identity_provider_aadb2c" 
}

inputs = {
   api_management_name = "api_management_name of api_management_identity_provider_aadb2c" 
   resource_group_name = "${resource_group}" 
   client_id = "client_id of api_management_identity_provider_aadb2c" 
   client_secret = "client_secret of api_management_identity_provider_aadb2c" 
   allowed_tenant = "allowed_tenant of api_management_identity_provider_aadb2c" 
   signin_tenant = "signin_tenant of api_management_identity_provider_aadb2c" 
   authority = "authority of api_management_identity_provider_aadb2c" 
   signin_policy = "signin_policy of api_management_identity_provider_aadb2c" 
   signup_policy = "signup_policy of api_management_identity_provider_aadb2c" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.api_management_name** | string  The Name of the API Management Service where this AAD Identity Provider should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.client_id** | string  Client ID of the Application in your B2C tenant. | 
| **var.client_secret** | string  Client secret of the Application in your B2C tenant. | 
| **var.allowed_tenant** | string  The allowed AAD tenant, usually your B2C tenant domain. | 
| **var.signin_tenant** | string  The tenant to use instead of Common when logging into Active Directory, usually your B2C tenant domain. | 
| **var.authority** | string  OpenID Connect discovery endpoint hostname, usually your b2clogin.com domain. | 
| **var.signin_policy** | string  Signin Policy Name. | 
| **var.signup_policy** | string  Signup Policy Name. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.password_reset_policy** | string  Password reset Policy Name. | 
| **var.profile_editing_policy** | string  Profile editing Policy Name. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Azure AD B2C Identity Provider Resource. | 

Additionally, all variables are provided as outputs.
