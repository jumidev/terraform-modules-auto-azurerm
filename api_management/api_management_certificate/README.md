# azurerm_api_management_certificate

Manages an Certificate within an API Management Service.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the API Management Certificate. Changing this forces a new resource to be created. | 
| **api_management_name** | string | True | -  |  -  | The Name of the API Management Service where this Service should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created. | 
| **data** | string | False | -  |  -  | The base-64 encoded certificate data, which must be a PFX file. | 
| **password** | string | False | -  |  -  | The password used for this certificate. | 
| **key_vault_secret_id** | string | False | -  |  -  | The ID of the Key Vault Secret containing the SSL Certificate, which must be of the type `application/x-pkcs12`. | 
| **key_vault_identity_client_id** | string | False | -  |  -  | The Client ID of the User Assigned Managed Identity to use for retrieving certificate. | 

