# azurerm_backup_container_storage_account

Manages registration of a storage account with Azure Backup. Storage accounts must be registered with an Azure Recovery Vault in order to backup file shares within the storage account. Registering a storage account with a vault creates what is known as a protection container within Azure Recovery Services. Once the container is created, Azure file shares within the storage account can be backed up using the `azurerm_backup_protected_file_share` resource.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.resource_group_name** | string | True | Name of the resource group where the vault is located. Changing this forces a new resource to be created. | 
| **var.recovery_vault_name** | string | True | The name of the vault where the storage account will be registered. Changing this forces a new resource to be created. | 
| **var.storage_account_id** | string | True | The ID of the Storage Account to be registered Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **resource_group_name** | string  | - | 
| **recovery_vault_name** | string  | - | 
| **storage_account_id** | string  | - | 
| **id** | string  | The ID of the Backup Storage Account Container. | 