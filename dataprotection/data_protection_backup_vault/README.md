# azurerm_data_protection_backup_vault

Manages a Backup Vault.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Backup Vault. Changing this forces a new Backup Vault to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Backup Vault should exist. Changing this forces a new Backup Vault to be created. | 
| **var.location** | string | True | -  |  -  | The Azure Region where the Backup Vault should exist. Changing this forces a new Backup Vault to be created. | 
| **var.datastore_type** | string | True | -  |  `ArchiveStore`, `SnapshotStore`, `VaultStore`  | Specifies the type of the data store. Possible values are `ArchiveStore`, `SnapshotStore` and `VaultStore`. Changing this forces a new resource to be created. | 
| **var.redundancy** | string | True | -  |  `GeoRedundant`, `LocallyRedundant`  | Specifies the backup storage redundancy. Possible values are `GeoRedundant` and `LocallyRedundant`. Changing this forces a new Backup Vault to be created. | 
| **var.identity** | block | False | -  |  -  | An `identity` block. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Backup Vault. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **datastore_type** | string  | - | 
| **redundancy** | string  | - | 
| **identity** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Backup Vault. | 
| **identity** | block  | An `identity` block, which contains the Identity information for this Backup Vault. | 
| **principal_id** | string  | The Principal ID for the Service Principal associated with the Identity of this Backup Vault. | 
| **tenant_id** | string  | The Tenant ID for the Service Principal associated with the Identity of this Backup Vault. | 