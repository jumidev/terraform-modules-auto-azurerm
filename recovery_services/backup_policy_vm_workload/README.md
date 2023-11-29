# azurerm_backup_policy_vm_workload

Manages an Azure VM Workload Backup Policy within a Recovery Services vault.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the VM Workload Backup Policy. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which to create the VM Workload Backup Policy. Changing this forces a new resource to be created. | 
| **var.recovery_vault_name** | string | True | -  |  The name of the Recovery Services Vault to use. Changing this forces a new resource to be created. | 
| **var.protection_policy** | block | True | -  |  One or more `protection_policy` blocks. | 
| **var.settings** | block | True | -  |  A `settings` block. | 
| **var.workload_type** | string | True | `SQLDataBase`, `SAPHanaDatabase`  |  The VM Workload type for the Backup Policy. Possible values are `SQLDataBase` and `SAPHanaDatabase`. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **recovery_vault_name** | string  | - | 
| **protection_policy** | block  | - | 
| **settings** | block  | - | 
| **workload_type** | string  | - | 
| **id** | string  | The ID of the Azure VM Workload Backup Policy. | 