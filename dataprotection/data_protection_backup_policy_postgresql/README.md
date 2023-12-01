# azurerm_data_protection_backup_policy_postgresql

Manages a Backup Policy to back up PostgreSQL.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "dataprotection/data_protection_backup_policy_postgresql" 
}

inputs = {
   name = "name of data_protection_backup_policy_postgresql" 
   resource_group_name = "${resource_group}" 
   vault_name = "vault_name of data_protection_backup_policy_postgresql" 
   backup_repeating_time_intervals = "backup_repeating_time_intervals of data_protection_backup_policy_postgresql" 
   default_retention_duration = "default_retention_duration of data_protection_backup_policy_postgresql" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.name** | string |  The name which should be used for this Backup Policy PostgreSQL. Changing this forces a new Backup Policy PostgreSQL to be created. | 
| **var.resource_group_name** | string |  The name of the Resource Group where the Backup Policy PostgreSQL should exist. Changing this forces a new Backup Policy PostgreSQL to be created. | 
| **var.vault_name** | string |  The name of the Backup Vault where the Backup Policy PostgreSQL should exist. Changing this forces a new Backup Policy PostgreSQL to be created. | 
| **var.backup_repeating_time_intervals** | string |  Specifies a list of repeating time interval. It supports weekly back. It should follow `ISO 8601` repeating time interval. Changing this forces a new Backup Policy PostgreSQL to be created. | 
| **var.default_retention_duration** | string |  The duration of default retention rule. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy PostgreSQL to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.retention_rule** | [block](#retention_rule-block-structure) |  One or more `retention_rule` blocks. Changing this forces a new Backup Policy PostgreSQL to be created. | 

### `criteria` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `absolute_criteria` | string | No | - | Possible values are 'AllBackup', 'FirstOfDay', 'FirstOfWeek', 'FirstOfMonth' and 'FirstOfYear'. These values mean the first successful backup of the day/week/month/year. Changing this forces a new Backup Policy PostgreSQL to be created. |
| `days_of_week` | string | No | - | Possible values are 'Monday', 'Tuesday', 'Thursday', 'Friday', 'Saturday' and 'Sunday'. Changing this forces a new Backup Policy PostgreSQL to be created. |
| `months_of_year` | string | No | - | Possible values are 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November' and 'December'. Changing this forces a new Backup Policy PostgreSQL to be created. |
| `scheduled_backup_times` | string | No | - | Specifies a list of backup times for backup in the 'RFC3339' format. Changing this forces a new Backup Policy PostgreSQL to be created. |
| `weeks_of_month` | string | No | - | Possible values are 'First', 'Second', 'Third', 'Fourth' and 'Last'. Changing this forces a new Backup Policy PostgreSQL to be created. |

### `retention_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `duration` | string | Yes | - | Duration after which the backup is deleted. It should follow 'ISO 8601' duration format. Changing this forces a new Backup Policy PostgreSQL to be created. |
| `criteria` | [block](#retention_rule-block-structure) | Yes | - | A 'criteria' block. Changing this forces a new Backup Policy PostgreSQL to be created. |
| `priority` | string | Yes | - | Specifies the priority of the rule. The priority number must be unique for each rule. The lower the priority number, the higher the priority of the rule. Changing this forces a new Backup Policy PostgreSQL to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Backup Policy PostgreSQL. | 

Additionally, all variables are provided as outputs.
