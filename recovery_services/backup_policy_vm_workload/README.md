# azurerm_backup_policy_vm_workload

Manages an Azure VM Workload Backup Policy within a Recovery Services vault.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "recovery_services/backup_policy_vm_workload" 
}

inputs = {
   name = "name of backup_policy_vm_workload" 
   resource_group_name = "${resource_group}" 
   recovery_vault_name = "recovery_vault_name of backup_policy_vm_workload" 
   protection_policy = {
      example_protection_policy = {
         policy_type = "..."   
         backup = "..."   
      }
  
   }
 
   settings = {
      example_settings = {
         time_zone = "..."   
      }
  
   }
 
   workload_type = "workload_type of backup_policy_vm_workload" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name of the VM Workload Backup Policy. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which to create the VM Workload Backup Policy. Changing this forces a new resource to be created. | 
| **recovery_vault_name** | string |  -  |  The name of the Recovery Services Vault to use. Changing this forces a new resource to be created. | 
| **protection_policy** | [block](#protection_policy-block-structure) |  -  |  One or more `protection_policy` blocks. | 
| **settings** | [block](#settings-block-structure) |  -  |  A `settings` block. | 
| **workload_type** | string |  `SQLDataBase`, `SAPHanaDatabase`  |  The VM Workload type for the Backup Policy. Possible values are `SQLDataBase` and `SAPHanaDatabase`. Changing this forces a new resource to be created. | 

### `simple_retention` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `count` | string | Yes | - | The count that is used to count retention duration with duration type 'Days'. Possible values are between '7' and '35'. |

### `settings` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `time_zone` | string | Yes | - | The timezone for the VM Workload Backup Policy. [The possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/). |
| `compression_enabled` | bool | No | False | The compression setting for the VM Workload Backup Policy. Defaults to 'false'. |

### `backup` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `frequency` | string | No | - | The backup frequency for the VM Workload Backup Policy. Possible values are 'Daily' and 'Weekly'. |
| `frequency_in_minutes` | string | No | - | The backup frequency in minutes for the VM Workload Backup Policy. Possible values are '15', '30', '60', '120', '240', '480', '720' and '1440'. |
| `time` | string | No | - | The time of day to perform the backup in 24hour format. |
| `weekdays` | string | No | - | The days of the week to perform backups on. Possible values are 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday' or 'Saturday'. This is used when 'frequency' is 'Weekly'. |

### `retention_monthly` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `count` | int | Yes | - | The number of monthly backups to keep. Must be between '1' and '1188'. |
| `format_type` | string | Yes | - | The retention schedule format type for monthly retention policy. Possible values are 'Daily' and 'Weekly'. |
| `monthdays` | string | No | - | The monthday backups to retain. Possible values are between '0' and '28'. |
| `weekdays` | string | No | - | The weekday backups to retain. Possible values are 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday' or 'Saturday'. |
| `weeks` | string | No | - | The weeks of the month to retain backups of. Possible values are 'First', 'Second', 'Third', 'Fourth' and 'Last'. |

### `retention_weekly` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `count` | string | Yes | - | The number of weekly backups to keep. Possible values are between '1' and '5163'. |
| `weekdays` | string | Yes | - | The weekday backups to retain. Possible values are 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday' or 'Saturday'. |

### `retention_daily` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `count` | string | Yes | - | The number of daily backups to keep. Possible values are between '7' and '9999'. |

### `protection_policy` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `policy_type` | string | Yes | - | The type of the VM Workload Backup Policy. Possible values are 'Differential', 'Full', 'Incremental' and 'Log'. |
| `backup` | [block](#protection_policy-block-structure) | Yes | - | A 'backup' block. |
| `retention_daily` | [block](#protection_policy-block-structure) | No | - | A 'retention_daily' block. |
| `retention_weekly` | [block](#protection_policy-block-structure) | No | - | A 'retention_weekly' block. |
| `retention_monthly` | [block](#protection_policy-block-structure) | No | - | A 'retention_monthly' block. |
| `retention_yearly` | [block](#protection_policy-block-structure) | No | - | A 'retention_yearly' block. |
| `simple_retention` | [block](#protection_policy-block-structure) | No | - | A 'simple_retention' block. |

### `retention_yearly` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `count` | string | Yes | - | The number of yearly backups to keep. Possible values are between '1' and '99' |
| `format_type` | string | Yes | - | The retention schedule format type for yearly retention policy. Possible values are 'Daily' and 'Weekly'. |
| `months` | string | Yes | - | The months of the year to retain backups of. Possible values are 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November' and 'December'. |
| `monthdays` | string | No | - | The monthday backups to retain. Possible values are between '0' and '28'. |
| `weekdays` | string | No | - | The weekday backups to retain. Possible values are 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday' or 'Saturday'. |
| `weeks` | string | No | - | The weeks of the month to retain backups of. Possible values are 'First', 'Second', 'Third', 'Fourth', 'Last'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Azure VM Workload Backup Policy. | 

Additionally, all variables are provided as outputs.
