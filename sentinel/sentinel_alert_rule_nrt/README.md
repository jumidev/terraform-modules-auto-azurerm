# azurerm_sentinel_alert_rule_nrt

Manages a Sentinel NRT Alert Rule.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Sentinel NRT Alert Rule. Changing this forces a new Sentinel NRT Alert Rule to be created. | 
| **var.log_analytics_workspace_id** | string | True | -  |  -  | The ID of the Log Analytics Workspace this Sentinel NRT Alert Rule belongs to. Changing this forces a new Sentinel NRT Alert Rule to be created. | 
| **var.display_name** | string | True | -  |  -  | The friendly name of this Sentinel NRT Alert Rule. | 
| **var.severity** | string | True | -  |  `High`, `Medium`, `Low`, `Informational`  | The alert severity of this Sentinel NRT Alert Rule. Possible values are `High`, `Medium`, `Low` and `Informational`. | 
| **var.query** | string | True | -  |  -  | The query of this Sentinel NRT Alert Rule. | 
| **var.alert_details_override** | block | False | -  |  -  | An `alert_details_override` block. | 
| **var.alert_rule_template_guid** | string | False | -  |  -  | The GUID of the alert rule template which is used for this Sentinel NRT Alert Rule. Changing this forces a new Sentinel NRT Alert Rule to be created. | 
| **var.alert_rule_template_version** | string | False | -  |  -  | The version of the alert rule template which is used for this Sentinel NRT Alert Rule. Changing this forces a new Sentinel NRT Alert Rule to be created. | 
| **var.custom_details** | string | False | -  |  -  | A map of string key-value pairs of columns to be attached to this Sentinel NRT Alert Rule. The key will appear as the field name in alerts and the value is the event parameter you wish to surface in the alerts. | 
| **var.description** | string | False | -  |  -  | The description of this Sentinel NRT Alert Rule. | 
| **var.enabled** | bool | False | `True`  |  -  | Should the Sentinel NRT Alert Rule be enabled? Defaults to `true`. | 
| **var.entity_mapping** | block | False | -  |  -  | A list of `entity_mapping` blocks. | 
| **var.event_grouping** | block | False | -  |  -  | A `event_grouping` block. | 
| **var.sentinel_entity_mapping** | block | False | -  |  -  | A list of `sentinel_entity_mapping` blocks. | 
| **var.incident** | block | False | -  |  -  | A `incident` block. | 
| **var.suppression_duration** | string | False | `PT5H`  |  -  | If `suppression_enabled` is `true`, this is ISO 8601 timespan duration, which specifies the amount of time the query should stop running after alert is generated. Defaults to `PT5H`. | 
| **var.suppression_enabled** | bool | False | `False`  |  -  | Should the Sentinel NRT Alert Rulea stop running query after alert is generated? Defaults to `false`. | 
| **var.tactics** | string | False | -  |  `Collection`, `CommandAndControl`, `CredentialAccess`, `DefenseEvasion`, `Discovery`, `Execution`, `Exfiltration`, `Impact`, `ImpairProcessControl`, `InhibitResponseFunction`, `InitialAccess`, `LateralMovement`, `Persistence`, `PreAttack`, `PrivilegeEscalation`, `Reconnaissance`, `ResourceDevelopment`  | A list of categories of attacks by which to classify the rule. Possible values are `Collection`, `CommandAndControl`, `CredentialAccess`, `DefenseEvasion`, `Discovery`, `Execution`, `Exfiltration`, `Impact`, `ImpairProcessControl`, `InhibitResponseFunction`, `InitialAccess`, `LateralMovement`, `Persistence`, `PreAttack`, `PrivilegeEscalation`, `Reconnaissance` and `ResourceDevelopment`. | 
| **var.techniques** | list | False | -  |  -  | A list of techniques of attacks by which to classify the rule. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **log_analytics_workspace_id** | string  | - | 
| **display_name** | string  | - | 
| **severity** | string  | - | 
| **query** | string  | - | 
| **alert_details_override** | block  | - | 
| **alert_rule_template_guid** | string  | - | 
| **alert_rule_template_version** | string  | - | 
| **custom_details** | string  | - | 
| **description** | string  | - | 
| **enabled** | bool  | - | 
| **entity_mapping** | block  | - | 
| **event_grouping** | block  | - | 
| **sentinel_entity_mapping** | block  | - | 
| **incident** | block  | - | 
| **suppression_duration** | string  | - | 
| **suppression_enabled** | bool  | - | 
| **tactics** | string  | - | 
| **techniques** | list  | - | 
| **id** | string  | The ID of the Sentinel NRT Alert Rule. | 