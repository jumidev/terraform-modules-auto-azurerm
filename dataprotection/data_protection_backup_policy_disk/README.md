# azurerm_data_protection_backup_policy_disk

Manages a Backup Policy Disk.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "dataprotection/data_protection_backup_policy_disk"   
}

inputs = {
   name = "The name which should be used for this Backup Policy Disk..."   
   # vault_id → set in component_inputs
   backup_repeating_time_intervals = "Specifies a list of repeating time interval"   
   default_retention_duration = "The duration of default retention rule"   
}

component_inputs = {
   vault_id = "path/to/key_vault_component:id"   
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
| **name** | string |  The name which should be used for this Backup Policy Disk. Changing this forces a new Backup Policy Disk to be created. | 
| **vault_id** | string |  The ID of the Backup Vault within which the Backup Policy Disk should exist. Changing this forces a new Backup Policy Disk to be created. | 
| **backup_repeating_time_intervals** | list |  Specifies a list of repeating time interval. It should follow `ISO 8601` repeating time interval . Changing this forces a new Backup Policy Disk to be created. | 
| **default_retention_duration** | string |  The duration of default retention rule. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy Disk to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **retention_rule** | [block](#retention_rule-block-structure) |  One or more `retention_rule` blocks. Changing this forces a new Backup Policy Disk to be created. | 

### `retention_rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name which should be used for this retention rule. Changing this forces a new Backup Policy Disk to be created. |
| `duration` | string | Yes | - | Duration of deletion after given timespan. It should follow 'ISO 8601' duration format. Changing this forces a new Backup Policy Disk to be created. |
| `criteria` | [block](#criteria-block-structure) | Yes | - | A 'criteria' block. Changing this forces a new Backup Policy Disk to be created. |
| `priority` | string | Yes | - | Retention Tag priority. Changing this forces a new Backup Policy Disk to be created. |

### `criteria` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `absolute_criteria` | string | No | - | Possible values are 'FirstOfDay' and 'FirstOfWeek'. Changing this forces a new Backup Policy Disk to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Backup Policy Disk. | 

Additionally, all variables are provided as outputs.
