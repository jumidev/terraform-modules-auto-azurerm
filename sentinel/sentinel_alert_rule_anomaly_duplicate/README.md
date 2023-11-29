# azurerm_sentinel_alert_rule_anomaly_duplicate

Manages a Duplicated Anomaly Alert Rule.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **display_name** | string | True | -  |  -  | The Display Name of the built-in Anomaly Alert Rule. | 
| **built_in_rule_id** | string | True | -  |  -  | The ID of the built-in Anomaly Alert Rule. Changing this forces a new Duplicated Anomaly Alert Rule to be created. | 
| **log_analytics_workspace_id** | string | True | -  |  -  | The ID of the Log Analytics Workspace. Changing this forces a new Duplicated Anomaly Alert Rule to be created. | 
| **enabled** | bool | True | -  |  -  | Should the Duplicated Anomaly Alert Rule be enabled? | 
| **mode** | string | True | -  |  -  | mode of the Duplicated Anomaly Alert Rule. Possible Values are `Production` and `Flighting`. | 
| **multi_select_observation** | block | False | -  |  -  | A list of `multi_select_observation` blocks. | 
| **single_select_observation** | block | False | -  |  -  | A list of `single_select_observation` blocks. | 
| **prioritized_exclude_observation** | block | False | -  |  -  | A list of `prioritized_exclude_observation` blocks. | 
| **threshold_observation** | block | False | -  |  -  | A list of `threshold_observation` blocks. | 

