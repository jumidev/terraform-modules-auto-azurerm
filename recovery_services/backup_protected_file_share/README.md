# azurerm_backup_protected_file_share

Manages an Azure Backup Protected File Share to enable backups for file shares within an Azure Storage Account

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "recovery_services/backup_protected_file_share" 
}

inputs = {
   resource_group_name = "${resource_group}" 
   recovery_vault_name = "recovery_vault_name of backup_protected_file_share" 
   source_storage_account_id = "source_storage_account_id of backup_protected_file_share" 
   source_file_share_name = "source_file_share_name of backup_protected_file_share" 
   backup_policy_id = "backup_policy_id of backup_protected_file_share" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.resource_group_name** | string | True | The name of the resource group in which to create the Azure Backup Protected File Share. Changing this forces a new resource to be created. | 
| **var.recovery_vault_name** | string | True | Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created. | 
| **var.source_storage_account_id** | string | True | Specifies the ID of the storage account of the file share to backup. Changing this forces a new resource to be created. | 
| **var.source_file_share_name** | string | True | Specifies the name of the file share to backup. Changing this forces a new resource to be created. | 
| **var.backup_policy_id** | string | True | Specifies the ID of the backup policy to use. The policy must be an Azure File Share backup policy. Other types are not supported. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Backup File Share. | 

Additionally, all variables are provided as outputs.
