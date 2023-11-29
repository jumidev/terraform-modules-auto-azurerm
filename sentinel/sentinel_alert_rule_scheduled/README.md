# azurerm_sentinel_alert_rule_scheduled

Manages a Sentinel Scheduled Alert Rule.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Sentinel Scheduled Alert Rule. Changing this forces a new Sentinel Scheduled Alert Rule to be created. | 
| **log_analytics_workspace_id** | string | True | -  |  -  | The ID of the Log Analytics Workspace this Sentinel Scheduled Alert Rule belongs to. Changing this forces a new Sentinel Scheduled Alert Rule to be created. | 
| **display_name** | string | True | -  |  -  | The friendly name of this Sentinel Scheduled Alert Rule. | 
| **severity** | string | True | -  |  `High`, `Medium`, `Low`, `Informational`  | The alert severity of this Sentinel Scheduled Alert Rule. Possible values are `High`, `Medium`, `Low` and `Informational`. | 
| **query** | string | True | -  |  -  | The query of this Sentinel Scheduled Alert Rule. | 
| **alert_details_override** | block | False | -  |  -  | An `alert_details_override` block. | 
| **alert_rule_template_guid** | string | False | -  |  -  | The GUID of the alert rule template which is used for this Sentinel Scheduled Alert Rule. Changing this forces a new Sentinel Scheduled Alert Rule to be created. | 
| **alert_rule_template_version** | string | False | -  |  -  | The version of the alert rule template which is used for this Sentinel Scheduled Alert Rule. Changing this forces a new Sentinel Scheduled Alert Rule to be created. | 
| **custom_details** | string | False | -  |  -  | A map of string key-value pairs of columns to be attached to this Sentinel Scheduled Alert Rule. The key will appear as the field name in alerts and the value is the event parameter you wish to surface in the alerts. | 
| **description** | string | False | -  |  -  | The description of this Sentinel Scheduled Alert Rule. | 
| **enabled** | bool | False | `True`  |  -  | Should the Sentinel Scheduled Alert Rule be enabled? Defaults to `true`. | 
| **entity_mapping** | block | False | -  |  -  | A list of `entity_mapping` blocks. | 
| **event_grouping** | block | False | -  |  -  | A `event_grouping` block. | 
| **incident_configuration** | block | False | -  |  -  | A `incident_configuration` block. | 
| **query_frequency** | string | False | `PT5H`  |  -  | The ISO 8601 timespan duration between two consecutive queries. Defaults to `PT5H`. | 
| **query_period** | string | False | `PT5H`  |  -  | The ISO 8601 timespan duration, which determine the time period of the data covered by the query. For example, it can query the past 10 minutes of data, or the past 6 hours of data. Defaults to `PT5H`. | 
| **suppression_duration** | string | False | `PT5H`  |  -  | If `suppression_enabled` is `true`, this is ISO 8601 timespan duration, which specifies the amount of time the query should stop running after alert is generated. Defaults to `PT5H`. | 
| **suppression_enabled** | bool | False | `False`  |  -  | Should the Sentinel Scheduled Alert Rulea stop running query after alert is generated? Defaults to `false`. | 
| **sentinel_entity_mapping** | block | False | -  |  -  | A list of `sentinel_entity_mapping` blocks. | 
| **tactics** | string | False | -  |  `Collection`, `CommandAndControl`, `CredentialAccess`, `DefenseEvasion`, `Discovery`, `Execution`, `Exfiltration`, `ImpairProcessControl`, `InhibitResponseFunction`, `Impact`, `InitialAccess`, `LateralMovement`, `Persistence`, `PrivilegeEscalation`, `PreAttack`, `Reconnaissance`, `ResourceDevelopment`  | A list of categories of attacks by which to classify the rule. Possible values are `Collection`, `CommandAndControl`, `CredentialAccess`, `DefenseEvasion`, `Discovery`, `Execution`, `Exfiltration`, `ImpairProcessControl`, `InhibitResponseFunction`, `Impact`, `InitialAccess`, `LateralMovement`, `Persistence`, `PrivilegeEscalation`, `PreAttack`, `Reconnaissance` and `ResourceDevelopment`. | 
| **techniques** | list | False | -  |  -  | A list of techniques of attacks by which to classify the rule. | 
| **trigger_operator** | string | False | `GreaterThan`  |  `Equal`, `GreaterThan`, `LessThan`, `NotEqual`  | The alert trigger operator, combined with `trigger_threshold`, setting alert threshold of this Sentinel Scheduled Alert Rule. Possible values are `Equal`, `GreaterThan`, `LessThan`, `NotEqual`. Defaults to `GreaterThan`. | 
| **trigger_threshold** | int | False | `0`  |  -  | The baseline number of query results generated, combined with `trigger_operator`, setting alert threshold of this Sentinel Scheduled Alert Rule. Defaults to `0`. | 

