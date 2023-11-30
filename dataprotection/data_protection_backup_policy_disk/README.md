# azurerm_data_protection_backup_policy_disk

Manages a Backup Policy Disk.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "dataprotection/data_protection_backup_policy_disk" 
}

inputs = {
   name = "name of data_protection_backup_policy_disk" 
   vault_id = "vault_id of data_protection_backup_policy_disk" 
   backup_repeating_time_intervals = "backup_repeating_time_intervals of data_protection_backup_policy_disk" 
   default_retention_duration = "default_retention_duration of data_protection_backup_policy_disk" 
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
| **var.name** | string | True | The name which should be used for this Backup Policy Disk. Changing this forces a new Backup Policy Disk to be created. | 
| **var.vault_id** | string | True | The ID of the Backup Vault within which the Backup Policy Disk should exist. Changing this forces a new Backup Policy Disk to be created. | 
| **var.backup_repeating_time_intervals** | string | True | Specifies a list of repeating time interval. It should follow `ISO 8601` repeating time interval . Changing this forces a new Backup Policy Disk to be created. | 
| **var.default_retention_duration** | string | True | The duration of default retention rule. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy Disk to be created. | 
| **var.retention_rule** | block | False | One or more `retention_rule` blocks. Changing this forces a new Backup Policy Disk to be created. | 

### `retention_rule` block structure

> `name` (string): (REQUIRED) The name which should be used for this retention rule. Changing this forces a new Backup Policy Disk to be created.
> `duration` (string): (REQUIRED) Duration of deletion after given timespan. It should follow 'ISO 8601' duration format. Changing this forces a new Backup Policy Disk to be created.
> `criteria` (block): (REQUIRED) A 'criteria' block. Changing this forces a new Backup Policy Disk to be created.
> `priority` (string): (REQUIRED) Retention Tag priority. Changing this forces a new Backup Policy Disk to be created.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Backup Policy Disk. | 

Additionally, all variables are provided as outputs.
