# azurerm_backup_policy_vm_workload

Manages an Azure VM Workload Backup Policy within a Recovery Services vault.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "recovery_services/backup_policy_vm_workload" 
}

inputs = {
   name = "name of backup_policy_vm_workload" 
   resource_group_name = "${resource_group}" 
   recovery_vault_name = "recovery_vault_name of backup_policy_vm_workload" 
   protection_policy = "protection_policy of backup_policy_vm_workload" 
   settings = "settings of backup_policy_vm_workload" 
   workload_type = "workload_type of backup_policy_vm_workload" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the VM Workload Backup Policy. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the resource group in which to create the VM Workload Backup Policy. Changing this forces a new resource to be created. | 
| **var.recovery_vault_name** | string | True | -  |  The name of the Recovery Services Vault to use. Changing this forces a new resource to be created. | 
| **var.protection_policy** | block | True | -  |  One or more `protection_policy` blocks. | 
| **var.settings** | block | True | -  |  A `settings` block. | 
| **var.workload_type** | string | True | `SQLDataBase`, `SAPHanaDatabase`  |  The VM Workload type for the Backup Policy. Possible values are `SQLDataBase` and `SAPHanaDatabase`. Changing this forces a new resource to be created. | 

### `protection_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `policy_type` | string | Yes | - | The type of the VM Workload Backup Policy. Possible values are 'Differential', 'Full', 'Incremental' and 'Log'. |
| `backup` | block | Yes | - | A 'backup' block. |
| `retention_daily` | block | No | - | A 'retention_daily' block. |
| `retention_weekly` | block | No | - | A 'retention_weekly' block. |
| `retention_monthly` | block | No | - | A 'retention_monthly' block. |
| `retention_yearly` | block | No | - | A 'retention_yearly' block. |
| `simple_retention` | block | No | - | A 'simple_retention' block. |

### `settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `time_zone` | string | Yes | - | The timezone for the VM Workload Backup Policy. [The possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/). |
| `compression_enabled` | bool | No | False | The compression setting for the VM Workload Backup Policy. Defaults to 'false'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Azure VM Workload Backup Policy. | 

Additionally, all variables are provided as outputs.
