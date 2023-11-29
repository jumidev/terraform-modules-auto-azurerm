# azurerm_sentinel_alert_rule_fusion

Manages a Sentinel Fusion Alert Rule.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Sentinel Fusion Alert Rule. Changing this forces a new Sentinel Fusion Alert Rule to be created. | 
| **log_analytics_workspace_id** | string | True | -  |  -  | The ID of the Log Analytics Workspace this Sentinel Fusion Alert Rule belongs to. Changing this forces a new Sentinel Fusion Alert Rule to be created. | 
| **alert_rule_template_guid** | string | True | -  |  -  | The GUID of the alert rule template which is used for this Sentinel Fusion Alert Rule. Changing this forces a new Sentinel Fusion Alert Rule to be created. | 
| **enabled** | bool | False | `True`  |  -  | Should this Sentinel Fusion Alert Rule be enabled? Defaults to `true`. | 
| **source** | block | False | -  |  -  | One or more `source` blocks. | 

