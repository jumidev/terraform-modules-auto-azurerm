# azurerm_data_protection_backup_policy_postgresql

Manages a Backup Policy to back up PostgreSQL.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Backup Policy PostgreSQL. Changing this forces a new Backup Policy PostgreSQL to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Backup Policy PostgreSQL should exist. Changing this forces a new Backup Policy PostgreSQL to be created. | 
| **vault_name** | string | True | -  |  -  | The name of the Backup Vault where the Backup Policy PostgreSQL should exist. Changing this forces a new Backup Policy PostgreSQL to be created. | 
| **backup_repeating_time_intervals** | string | True | -  |  -  | Specifies a list of repeating time interval. It supports weekly back. It should follow `ISO 8601` repeating time interval. Changing this forces a new Backup Policy PostgreSQL to be created. | 
| **default_retention_duration** | string | True | -  |  -  | The duration of default retention rule. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy PostgreSQL to be created. | 
| **retention_rule** | block | False | -  |  -  | One or more `retention_rule` blocks. Changing this forces a new Backup Policy PostgreSQL to be created. | 

