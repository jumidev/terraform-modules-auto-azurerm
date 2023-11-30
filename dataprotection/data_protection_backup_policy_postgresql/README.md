# azurerm_data_protection_backup_policy_postgresql

Manages a Backup Policy to back up PostgreSQL.

## Example minimal component.hclt

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

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Backup Policy PostgreSQL. Changing this forces a new Backup Policy PostgreSQL to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Backup Policy PostgreSQL should exist. Changing this forces a new Backup Policy PostgreSQL to be created. | 
| **var.vault_name** | string | True | The name of the Backup Vault where the Backup Policy PostgreSQL should exist. Changing this forces a new Backup Policy PostgreSQL to be created. | 
| **var.backup_repeating_time_intervals** | string | True | Specifies a list of repeating time interval. It supports weekly back. It should follow `ISO 8601` repeating time interval. Changing this forces a new Backup Policy PostgreSQL to be created. | 
| **var.default_retention_duration** | string | True | The duration of default retention rule. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy PostgreSQL to be created. | 
| **var.retention_rule** | block | False | One or more `retention_rule` blocks. Changing this forces a new Backup Policy PostgreSQL to be created. | | `retention_rule` block structure: || 
|   name (string): (REQUIRED) The name which should be used for this retention rule. Changing this forces a new Backup Policy PostgreSQL to be created. ||
|   duration (string): (REQUIRED) Duration after which the backup is deleted. It should follow 'ISO 8601' duration format. Changing this forces a new Backup Policy PostgreSQL to be created. ||
|   criteria (block): (REQUIRED) A 'criteria' block. Changing this forces a new Backup Policy PostgreSQL to be created. ||
|   priority (string): (REQUIRED) Specifies the priority of the rule. The priority number must be unique for each rule. The lower the priority number, the higher the priority of the rule. Changing this forces a new Backup Policy PostgreSQL to be created. ||




## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Backup Policy PostgreSQL. | 

Additionally, all variables are provided as outputs.
