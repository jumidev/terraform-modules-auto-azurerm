# azurerm_api_management_identity_provider_aad

Manages an API Management AAD Identity Provider.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_identity_provider_aad" 
}

inputs = {
   api_management_name = "api_management_name of api_management_identity_provider_aad" 
   resource_group_name = "${resource_group}" 
   client_id = "client_id of api_management_identity_provider_aad" 
   client_secret = "client_secret of api_management_identity_provider_aad" 
   allowed_tenants = "allowed_tenants of api_management_identity_provider_aad" 
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
| **var.api_management_name** | string |  The Name of the API Management Service where this AAD Identity Provider should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.client_id** | string |  Client Id of the Application in the AAD Identity Provider. | 
| **var.client_secret** | string |  Client secret of the Application in the AAD Identity Provider. | 
| **var.allowed_tenants** | string |  List of allowed AAD Tenants. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.signin_tenant** | string |  The AAD Tenant to use instead of Common when logging into Active Directory | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management AAD Identity Provider. | 

Additionally, all variables are provided as outputs.
