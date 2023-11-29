# azurerm_azurerm_sentinel_alert_rule_machine_learning_behavior_analytics

Manages a Sentinel Machine Learning Behavior Analytics Alert Rule.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this SentinelMachine Learning Behavior Analytics Alert Rule. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created. | 
| **var.log_analytics_workspace_id** | string | True | -  |  The ID of the Log Analytics Workspace this SentinelMachine Learning Behavior Analytics Alert Rule belongs to. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created. | 
| **var.alert_rule_template_guid** | string | True | -  |  The GUID of the alert rule template which is used for this Sentinel Machine Learning Behavior Analytics Alert Rule. Changing this forces a new Sentinel Machine Learning Behavior Analytics Alert Rule to be created. | 
| **var.enabled** | bool | False | `True`  |  Should this Sentinel Machine Learning Behavior Analytics Alert Rule be enabled? Defaults to `true`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **log_analytics_workspace_id** | string  | - | 
| **alert_rule_template_guid** | string  | - | 
| **enabled** | bool  | - | 
| **id** | string  | The ID of the Sentinel Machine Learning Behavior Analytics Alert Rule. | 