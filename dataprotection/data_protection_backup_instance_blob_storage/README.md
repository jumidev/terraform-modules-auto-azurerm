# azurerm_data_protection_backup_instance_blob_storage

Manages a Backup Instance Blob Storage.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Backup Instance Blob Storage. Changing this forces a new Backup Instance Blob Storage to be created. | 
| **location** | string | True | -  |  -  | The location of the source Storage Account. Changing this forces a new Backup Instance Blob Storage to be created. | 
| **vault_id** | string | True | -  |  -  | The ID of the Backup Vault within which the Backup Instance Blob Storage should exist. Changing this forces a new Backup Instance Blob Storage to be created. | 
| **storage_account_id** | string | True | -  |  -  | The ID of the source Storage Account. Changing this forces a new Backup Instance Blob Storage to be created. | 
| **backup_policy_id** | string | True | -  |  -  | The ID of the Backup Policy. | 

