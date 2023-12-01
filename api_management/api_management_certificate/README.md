# azurerm_api_management_certificate

Manages an Certificate within an API Management Service.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "api_management/api_management_certificate" 
}

inputs = {
   name = "name of api_management_certificate" 
   api_management_name = "api_management_name of api_management_certificate" 
   resource_group_name = "${resource_group}" 
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
| **name** | string |  The name of the API Management Certificate. Changing this forces a new resource to be created. | 
| **api_management_name** | string |  The Name of the API Management Service where this Service should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **data** | string |  The base-64 encoded certificate data, which must be a PFX file. | 
| **password** | string |  The password used for this certificate. | 
| **key_vault_secret_id** | string |  The ID of the Key Vault Secret containing the SSL Certificate, which must be of the type `application/x-pkcs12`. | 
| **key_vault_identity_client_id** | string |  The Client ID of the User Assigned Managed Identity to use for retrieving certificate. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the API Management Certificate. | 
| **expiration** | string | No  | The Expiration Date of this Certificate, formatted as an RFC3339 string. | 
| **subject** | string | No  | The Subject of this Certificate. | 
| **thumbprint** | string | No  | The Thumbprint of this Certificate. | 

Additionally, all variables are provided as outputs.
