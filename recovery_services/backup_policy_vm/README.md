# azurerm_backup_policy_vm

Manages an Azure Backup VM Backup Policy.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | Specifies the name of the Backup Policy. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group in which to create the policy. Changing this forces a new resource to be created. | 
| **var.recovery_vault_name** | string | True | Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **recovery_vault_name** | string  | - | 
| **id** | string  | The ID of the VM Backup Policy. | 