# azurerm_backup_policy_file_share

Manages an Azure File Share Backup Policy within a Recovery Services vault.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the policy. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which to create the policy. Changing this forces a new resource to be created. | 
| **var.recovery_vault_name** | string | True | Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **recovery_vault_name** | string  | - | 
| **id** | string  | The ID of the Azure File Share Backup Policy. | 