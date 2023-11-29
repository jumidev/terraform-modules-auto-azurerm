# azurerm_sentinel_alert_rule_anomaly_built_in

Manages a Built-in Anomaly Alert Rule.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | False | -  |  -  | The Name of the built-in Anomaly Alert Rule. | 
| **display_name** | string | False | -  |  -  | The Display Name of the built-in Anomaly Alert Rule. | 
| **log_analytics_workspace_id** | string | True | -  |  -  | The ID of the Log Analytics Workspace. Changing this forces a new Built-in Anomaly Alert Rule to be created. | 
| **enabled** | bool | True | -  |  -  | Should the Built-in Anomaly Alert Rule be enabled? | 
| **mode** | string | True | -  |  -  | mode of the Built-in Anomaly Alert Rule. Possible Values are `Production` and `Flighting`. | 

