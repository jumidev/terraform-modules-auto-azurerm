# azurerm_backup_policy_vm_workload

Manages an Azure VM Workload Backup Policy within a Recovery Services vault.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the VM Workload Backup Policy. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which to create the VM Workload Backup Policy. Changing this forces a new resource to be created. | 
| **recovery_vault_name** | string | True | -  |  -  | The name of the Recovery Services Vault to use. Changing this forces a new resource to be created. | 
| **protection_policy** | block | True | -  |  -  | One or more `protection_policy` blocks. | 
| **settings** | block | True | -  |  -  | A `settings` block. | 
| **workload_type** | string | True | -  |  `SQLDataBase`, `SAPHanaDatabase`  | The VM Workload type for the Backup Policy. Possible values are `SQLDataBase` and `SAPHanaDatabase`. Changing this forces a new resource to be created. | 

