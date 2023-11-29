# azurerm_backup_protected_file_share

Manages an Azure Backup Protected File Share to enable backups for file shares within an Azure Storage Account

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the Azure Backup Protected File Share. Changing this forces a new resource to be created. | 
| **recovery_vault_name** | string | True | -  |  -  | Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created. | 
| **source_storage_account_id** | string | True | -  |  -  | Specifies the ID of the storage account of the file share to backup. Changing this forces a new resource to be created. | 
| **source_file_share_name** | string | True | -  |  -  | Specifies the name of the file share to backup. Changing this forces a new resource to be created. | 
| **backup_policy_id** | string | True | -  |  -  | Specifies the ID of the backup policy to use. The policy must be an Azure File Share backup policy. Other types are not supported. | 

