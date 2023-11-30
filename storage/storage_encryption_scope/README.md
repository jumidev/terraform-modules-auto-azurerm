# azurerm_storage_encryption_scope

Manages a Storage Encryption Scope.~> **Note:** Storage Encryption Scopes are in Preview [more information can be found here](https://docs.microsoft.com/azure/storage/blobs/encryption-scope-manage).

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "storage/storage_encryption_scope" 
}

inputs = {
   name = "name of storage_encryption_scope" 
   source = "source of storage_encryption_scope" 
   storage_account_id = "storage_account_id of storage_encryption_scope" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Storage Encryption Scope. Changing this forces a new Storage Encryption Scope to be created. | 
| **var.source** | string | True | `Microsoft.KeyVault`, `Microsoft.Storage`  |  The source of the Storage Encryption Scope. Possible values are `Microsoft.KeyVault` and `Microsoft.Storage`. | 
| **var.storage_account_id** | string | True | -  |  The ID of the Storage Account where this Storage Encryption Scope is created. Changing this forces a new Storage Encryption Scope to be created. | 
| **var.infrastructure_encryption_required** | string | False | -  |  Is a secondary layer of encryption with Platform Managed Keys for data applied? Changing this forces a new resource to be created. | 
| **var.key_vault_key_id** | string | False | -  |  The ID of the Key Vault Key. Required when `source` is `Microsoft.KeyVault`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Storage Encryption Scope. | 

Additionally, all variables are provided as outputs.
