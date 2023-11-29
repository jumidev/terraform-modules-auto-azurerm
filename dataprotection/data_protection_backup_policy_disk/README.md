# azurerm_data_protection_backup_policy_disk

Manages a Backup Policy Disk.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Backup Policy Disk. Changing this forces a new Backup Policy Disk to be created. | 
| **vault_id** | string | True | -  |  -  | The ID of the Backup Vault within which the Backup Policy Disk should exist. Changing this forces a new Backup Policy Disk to be created. | 
| **backup_repeating_time_intervals** | string | True | -  |  -  | Specifies a list of repeating time interval. It should follow `ISO 8601` repeating time interval . Changing this forces a new Backup Policy Disk to be created. | 
| **default_retention_duration** | string | True | -  |  -  | The duration of default retention rule. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy Disk to be created. | 
| **retention_rule** | block | False | -  |  -  | One or more `retention_rule` blocks. Changing this forces a new Backup Policy Disk to be created. | 

