# azurerm_data_protection_backup_instance_blob_storage

Manages a Backup Instance Blob Storage.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Backup Instance Blob Storage. Changing this forces a new Backup Instance Blob Storage to be created. | 
| **var.location** | string | True | -  |  -  | The location of the source Storage Account. Changing this forces a new Backup Instance Blob Storage to be created. | 
| **var.vault_id** | string | True | -  |  -  | The ID of the Backup Vault within which the Backup Instance Blob Storage should exist. Changing this forces a new Backup Instance Blob Storage to be created. | 
| **var.storage_account_id** | string | True | -  |  -  | The ID of the source Storage Account. Changing this forces a new Backup Instance Blob Storage to be created. | 
| **var.backup_policy_id** | string | True | -  |  -  | The ID of the Backup Policy. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **location** | string  | - | 
| **vault_id** | string  | - | 
| **storage_account_id** | string  | - | 
| **backup_policy_id** | string  | - | 
| **id** | string  | The ID of the Backup Instance Blob Storage. | 