# azurerm_storage_encryption_scope

Manages a Storage Encryption Scope.~> **Note:** Storage Encryption Scopes are in Preview [more information can be found here](https://docs.microsoft.com/azure/storage/blobs/encryption-scope-manage).

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Storage Encryption Scope. Changing this forces a new Storage Encryption Scope to be created. | 
| **source** | string | True | -  |  `Microsoft.KeyVault`, `Microsoft.Storage`  | The source of the Storage Encryption Scope. Possible values are `Microsoft.KeyVault` and `Microsoft.Storage`. | 
| **storage_account_id** | string | True | -  |  -  | The ID of the Storage Account where this Storage Encryption Scope is created. Changing this forces a new Storage Encryption Scope to be created. | 
| **infrastructure_encryption_required** | string | False | -  |  -  | Is a secondary layer of encryption with Platform Managed Keys for data applied? Changing this forces a new resource to be created. | 
| **key_vault_key_id** | string | False | -  |  -  | The ID of the Key Vault Key. Required when `source` is `Microsoft.KeyVault`. | 

