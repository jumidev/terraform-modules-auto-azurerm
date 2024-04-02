# azurerm_storage_encryption_scope



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "storage/storage_encryption_scope"   
}

inputs = {
   name = "The name which should be used for this Storage Encryption Scope..."   
   source = "The source of the Storage Encryption Scope"   
   # storage_account_id → set in component_inputs
}

component_inputs = {
   storage_account_id = "path/to/storage_account_component:id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name which should be used for this Storage Encryption Scope. Changing this forces a new Storage Encryption Scope to be created. | 
| **source** | string |  `Microsoft.KeyVault`, `Microsoft.Storage`  |  The source of the Storage Encryption Scope. Possible values are `Microsoft.KeyVault` and `Microsoft.Storage`. | 
| **storage_account_id** | string |  -  |  The ID of the Storage Account where this Storage Encryption Scope is created. Changing this forces a new Storage Encryption Scope to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **infrastructure_encryption_required** | string |  Is a secondary layer of encryption with Platform Managed Keys for data applied? Changing this forces a new resource to be created. | 
| **key_vault_key_id** | string |  The ID of the Key Vault Key. Required when `source` is `Microsoft.KeyVault`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **key_vault_key_id** | string | No  | The ID of the Key Vault Key. Required when `source` is `Microsoft.KeyVault`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Storage Encryption Scope. | 

Additionally, all variables are provided as outputs.
