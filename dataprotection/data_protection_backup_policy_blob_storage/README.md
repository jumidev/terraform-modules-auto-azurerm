# azurerm_data_protection_backup_policy_blob_storage

Manages a Backup Policy Blob Storage.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Backup Policy Blob Storage. Changing this forces a new Backup Policy Blob Storage to be created. | 
| **vault_id** | string | True | -  |  -  | The ID of the Backup Vault within which the Backup Policy Blob Storage should exist. Changing this forces a new Backup Policy Blob Storage to be created. | 
| **retention_duration** | string | True | -  |  -  | Duration of deletion after given timespan. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy Blob Storage to be created. | 

