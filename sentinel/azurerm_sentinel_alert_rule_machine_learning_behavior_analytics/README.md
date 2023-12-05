# azurerm_azurerm_sentinel_alert_rule_machine_learning_behavior_analytics

Manages a Sentinel Machine Learning Behavior Analytics Alert Rule.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "sentinel/azurerm_sentinel_alert_rule_machine_learning_behavior_analytics"   
}

inputs = {
   name = "The name which should be used for this SentinelMachine Learning Behavior Analyti..."   
   # log_analytics_workspace_id → set in tfstate_inputs
   alert_rule_template_guid = "The GUID of the alert rule template which is used for this Sentinel Machine Lear..."   
}

tfstate_inputs = {
   log_analytics_workspace_id = "path/to/log_analytics_workspace_component:id"   
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
| **name** | string |  The name which should be used for this SentinelMachine Learning Behavior Analytics Alert Rule. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created. | 
| **log_analytics_workspace_id** | string |  The ID of the Log Analytics Workspace this SentinelMachine Learning Behavior Analytics Alert Rule belongs to. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created. | 
| **alert_rule_template_guid** | string |  The GUID of the alert rule template which is used for this Sentinel Machine Learning Behavior Analytics Alert Rule. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **enabled** | bool |  `True`  |  Should this Sentinel Machine Learning Behavior Analytics Alert Rule be enabled? Defaults to `true`. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Sentinel Machine Learning Behavior Analytics Alert Rule. | 

Additionally, all variables are provided as outputs.
