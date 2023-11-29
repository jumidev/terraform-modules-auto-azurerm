# azurerm_sentinel_alert_rule_threat_intelligence

Manages a Sentinel Threat Intelligence Alert Rule.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Sentinel Threat Intelligence Alert Rule. Changing this forces a new Sentinel Threat Intelligence Alert Rule to be created. | 
| **var.log_analytics_workspace_id** | string | True | -  |  -  | The ID of the Log Analytics Workspace this Sentinel Threat Intelligence Alert Rule belongs to. Changing this forces a new Sentinel Threat Intelligence Alert Rule to be created. | 
| **var.alert_rule_template_guid** | string | True | -  |  -  | The GUID of the alert rule template which is used for this Sentinel Threat Intelligence Alert Rule. Changing this forces a new Sentinel Threat Intelligence Alert Rule to be created. | 
| **var.enabled** | bool | False | `True`  |  -  | Whether the Threat Intelligence Alert rule enabled? Defaults to `true`. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **log_analytics_workspace_id** | string  | - | 
| **alert_rule_template_guid** | string  | - | 
| **enabled** | bool  | - | 
| **id** | string  | The ID of the Sentinel NRT Alert Rule. | 