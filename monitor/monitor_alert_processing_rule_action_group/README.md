# azurerm_monitor_alert_processing_rule_action_group

Manages an Alert Processing Rule which apply action group.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "monitor/monitor_alert_processing_rule_action_group" 
}

inputs = {
   add_action_group_ids = "add_action_group_ids of monitor_alert_processing_rule_action_group" 
   name = "name of monitor_alert_processing_rule_action_group" 
   resource_group_name = "${resource_group}" 
   scopes = "scopes of monitor_alert_processing_rule_action_group" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.add_action_group_ids** | string | True | -  |  Specifies a list of Action Group IDs. | 
| **var.name** | string | True | -  |  The name which should be used for this Alert Processing Rule. Changing this forces a new Alert Processing Rule to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Alert Processing Rule should exist. Changing this forces a new Alert Processing Rule to be created. | 
| **var.scopes** | list | True | -  |  A list of resource IDs which will be the target of alert processing rule. | 
| **var.condition** | block | False | -  |  A `condition` block. | 
| **var.description** | string | False | -  |  Specifies a description for the Alert Processing Rule. | 
| **var.enabled** | bool | False | `True`  |  Should the Alert Processing Rule be enabled? Defaults to `true`. | 
| **var.schedule** | block | False | -  |  A `schedule` block. | 
| **var.tags** | map | False | -  |  A mapping of tags which should be assigned to the Alert Processing Rule. | 

### `condition` block structure

> `alert_context` (block): A 'alert_context' block.\
> `alert_rule_id` (block): A 'alert_rule_id' block.\
> `alert_rule_name` (block): A 'alert_rule_name' block.\
> `description` (block): A 'description' block.\
> `monitor_condition` (block): A 'monitor_condition' block.\
> `monitor_service` (block): A 'monitor_service' block.\
> `severity` (block): A 'severity' block.\
> `signal_type` (block): A 'signal_type' block.\
> `target_resource` (block): A 'target_resource' block.\
> `target_resource_group` (block): A 'target_resource_group' block.\
> `target_resource_type` (block): A 'target_resource_type' block.\

### `schedule` block structure

> `effective_from` (string): Specifies the Alert Processing Rule effective start time (Y-m-d'T'H:M:S).\
> `effective_until` (string): Specifies the Alert Processing Rule effective end time (Y-m-d'T'H:M:S).\
> `recurrence` (block): A 'recurrence' block.\
> `time_zone` (string): The time zone (e.g. Pacific Standard time, Eastern Standard Time). Defaults to 'UTC'. [possible values are defined here](https://docs.microsoft.com/en-us/previous-versions/windows/embedded/ms912391(v=winembedded.11)).\



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Alert Processing Rule. | 

Additionally, all variables are provided as outputs.
