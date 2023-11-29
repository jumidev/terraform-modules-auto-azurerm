# azurerm_data_protection_backup_vault

Manages a Backup Vault.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Backup Vault. Changing this forces a new Backup Vault to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Backup Vault should exist. Changing this forces a new Backup Vault to be created. | 
| **location** | string | True | -  |  -  | The Azure Region where the Backup Vault should exist. Changing this forces a new Backup Vault to be created. | 
| **datastore_type** | string | True | -  |  `ArchiveStore`, `SnapshotStore`, `VaultStore`  | Specifies the type of the data store. Possible values are `ArchiveStore`, `SnapshotStore` and `VaultStore`. Changing this forces a new resource to be created. | 
| **redundancy** | string | True | -  |  `GeoRedundant`, `LocallyRedundant`  | Specifies the backup storage redundancy. Possible values are `GeoRedundant` and `LocallyRedundant`. Changing this forces a new Backup Vault to be created. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Backup Vault. | 

