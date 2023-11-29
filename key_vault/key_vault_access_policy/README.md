# azurerm_key_vault_access_policy

Manages a Key Vault Access Policy.~> **NOTE:** It's possible to define Key Vault Access Policies both within [the `azurerm_key_vault` resource](key_vault.html) via the `access_policy` block and by using [the `azurerm_key_vault_access_policy` resource](key_vault_access_policy.html). However it's not possible to use both methods to manage Access Policies within a KeyVault, since there'll be conflicts.-> **NOTE:** Azure permits a maximum of 1024 Access Policies per Key Vault - [more information can be found in this document](https://docs.microsoft.com/azure/key-vault/key-vault-secure-your-key-vault#data-plane-access-control).

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.key_vault_id** | string | True | -  |  -  | Specifies the id of the Key Vault resource. Changing this forces a new resource to be created. | 
| **var.tenant_id** | string | True | -  |  -  | The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault. Changing this forces a new resource to be created. | 
| **var.object_id** | string | True | -  |  -  | The object ID of a user, service principal or security group in the Azure Active Directory tenant for the vault. The object ID of a service principal can be fetched from `azuread_service_principal.object_id`. The object ID must be unique for the list of access policies. Changing this forces a new resource to be created. | 
| **var.application_id** | string | False | -  |  -  | The object ID of an Application in Azure Active Directory. Changing this forces a new resource to be created. | 
| **var.certificate_permissions** | list | False | -  |  -  | List of certificate permissions, must be one or more from the following: `Backup`, `Create`, `Delete`, `DeleteIssuers`, `Get`, `GetIssuers`, `Import`, `List`, `ListIssuers`, `ManageContacts`, `ManageIssuers`, `Purge`, `Recover`, `Restore`, `SetIssuers` and `Update`. | 
| **var.key_permissions** | list | False | -  |  -  | List of key permissions, must be one or more from the following: `Backup`, `Create`, `Decrypt`, `Delete`, `Encrypt`, `Get`, `Import`, `List`, `Purge`, `Recover`, `Restore`, `Sign`, `UnwrapKey`, `Update`, `Verify`, `WrapKey`, `Release`, `Rotate`, `GetRotationPolicy` and `SetRotationPolicy`. | 
| **var.secret_permissions** | list | False | -  |  -  | List of secret permissions, must be one or more from the following: `Backup`, `Delete`, `Get`, `List`, `Purge`, `Recover`, `Restore` and `Set`. | 
| **var.storage_permissions** | list | False | -  |  -  | List of storage permissions, must be one or more from the following: `Backup`, `Delete`, `DeleteSAS`, `Get`, `GetSAS`, `List`, `ListSAS`, `Purge`, `Recover`, `RegenerateKey`, `Restore`, `Set`, `SetSAS` and `Update`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **key_vault_id** | string  | - | 
| **tenant_id** | string  | - | 
| **object_id** | string  | - | 
| **application_id** | string  | - | 
| **certificate_permissions** | list  | - | 
| **key_permissions** | list  | - | 
| **secret_permissions** | list  | - | 
| **storage_permissions** | list  | - | 
| **id** | string  | Key Vault Access Policy ID. | 