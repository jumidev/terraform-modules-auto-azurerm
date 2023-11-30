# azurerm_api_management_certificate

Manages an Certificate within an API Management Service.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the API Management Certificate. Changing this forces a new resource to be created. | 
| **var.api_management_name** | string | True | The Name of the API Management Service where this Service should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created. | 
| **var.data** | string | False | The base-64 encoded certificate data, which must be a PFX file. | 
| **var.password** | string | False | The password used for this certificate. | 
| **var.key_vault_secret_id** | string | False | The ID of the Key Vault Secret containing the SSL Certificate, which must be of the type `application/x-pkcs12`. | 
| **var.key_vault_identity_client_id** | string | False | The Client ID of the User Assigned Managed Identity to use for retrieving certificate. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **api_management_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **data** | string  | - | 
| **password** | string  | - | 
| **key_vault_secret_id** | string  | - | 
| **key_vault_identity_client_id** | string  | - | 
| **id** | string  | The ID of the API Management Certificate. | 
| **expiration** | string  | The Expiration Date of this Certificate, formatted as an RFC3339 string. | 
| **subject** | string  | The Subject of this Certificate. | 
| **thumbprint** | string  | The Thumbprint of this Certificate. | 

## Example minimal hclt

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