# azurerm_monitor_alert_processing_rule_suppression

Manages an Alert Processing Rule which suppress notifications.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "monitor/monitor_alert_processing_rule_suppression" 
}

inputs = {
   name = "name of monitor_alert_processing_rule_suppression" 
   resource_group_name = "${resource_group}" 
   scopes = "scopes of monitor_alert_processing_rule_suppression" 
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
| **var.name** | string  The name which should be used for this Alert Processing Rule. Changing this forces a new Alert Processing Rule to be created. | 
| **var.resource_group_name** | string  The name of the Resource Group where the Alert Processing Rule should exist. Changing this forces a new Alert Processing Rule to be created. | 
| **var.scopes** | list  A list of resource IDs which will be the target of Alert Processing Rule. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.condition** | block  -  |  A `condition` block. | 
| **var.description** | string  -  |  Specifies a description for the Alert Processing Rule. | 
| **var.enabled** | bool  `True`  |  Should the Alert Processing Rule be enabled? Defaults to `true`. | 
| **var.schedule** | block  -  |  A `schedule` block. | 
| **var.tags** | map  -  |  A mapping of tags which should be assigned to the Alert Processing Rule. | 

### `condition` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `alert_context` | block | No | - | A 'alert_context' block. |
| `alert_rule_id` | block | No | - | A 'alert_rule_id' block. |
| `alert_rule_name` | block | No | - | A 'alert_rule_name' block. |
| `description` | block | No | - | A 'description' block. |
| `monitor_condition` | block | No | - | A 'monitor_condition' block. |
| `monitor_service` | block | No | - | A 'monitor_service' block. |
| `severity` | block | No | - | A 'severity' block. |
| `signal_type` | block | No | - | A 'signal_type' block. |
| `target_resource` | block | No | - | A 'target_resource' block. |
| `target_resource_group` | block | No | - | A 'target_resource_group' block. |
| `target_resource_type` | block | No | - | A 'target_resource_type' block. |

### `schedule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `effective_from` | string | No | - | Specifies the Alert Processing Rule effective start time (Y-m-d'T'H:M:S). |
| `effective_until` | string | No | - | Specifies the Alert Processing Rule effective end time (Y-m-d'T'H:M:S). |
| `recurrence` | block | No | - | A 'recurrence' block. |
| `time_zone` | string | No | UTC | The time zone (e.g. Pacific Standard time, Eastern Standard Time). Defaults to 'UTC'. [possible values are defined here](https://docs.microsoft.com/en-us/previous-versions/windows/embedded/ms912391(v=winembedded.11)). |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Alert Processing Rule. | 

Additionally, all variables are provided as outputs.
