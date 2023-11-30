# azurerm_sentinel_alert_rule_scheduled

Manages a Sentinel Scheduled Alert Rule.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "sentinel/sentinel_alert_rule_scheduled" 
}

inputs = {
   name = "name of sentinel_alert_rule_scheduled" 
   log_analytics_workspace_id = "log_analytics_workspace_id of sentinel_alert_rule_scheduled" 
   display_name = "display_name of sentinel_alert_rule_scheduled" 
   severity = "severity of sentinel_alert_rule_scheduled" 
   query = "query of sentinel_alert_rule_scheduled" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.name** | string  -  |  The name which should be used for this Sentinel Scheduled Alert Rule. Changing this forces a new Sentinel Scheduled Alert Rule to be created. | 
| **var.log_analytics_workspace_id** | string  -  |  The ID of the Log Analytics Workspace this Sentinel Scheduled Alert Rule belongs to. Changing this forces a new Sentinel Scheduled Alert Rule to be created. | 
| **var.display_name** | string  -  |  The friendly name of this Sentinel Scheduled Alert Rule. | 
| **var.severity** | string  `High`, `Medium`, `Low`, `Informational`  |  The alert severity of this Sentinel Scheduled Alert Rule. Possible values are `High`, `Medium`, `Low` and `Informational`. | 
| **var.query** | string  -  |  The query of this Sentinel Scheduled Alert Rule. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **var.alert_details_override** | block  -  |  -  |  An `alert_details_override` block. | 
| **var.alert_rule_template_guid** | string  -  |  -  |  The GUID of the alert rule template which is used for this Sentinel Scheduled Alert Rule. Changing this forces a new Sentinel Scheduled Alert Rule to be created. | 
| **var.alert_rule_template_version** | string  -  |  -  |  The version of the alert rule template which is used for this Sentinel Scheduled Alert Rule. Changing this forces a new Sentinel Scheduled Alert Rule to be created. | 
| **var.custom_details** | string  -  |  -  |  A map of string key-value pairs of columns to be attached to this Sentinel Scheduled Alert Rule. The key will appear as the field name in alerts and the value is the event parameter you wish to surface in the alerts. | 
| **var.description** | string  -  |  -  |  The description of this Sentinel Scheduled Alert Rule. | 
| **var.enabled** | bool  `True`  |  -  |  Should the Sentinel Scheduled Alert Rule be enabled? Defaults to `true`. | 
| **var.entity_mapping** | block  -  |  -  |  A list of `entity_mapping` blocks. | 
| **var.event_grouping** | block  -  |  -  |  A `event_grouping` block. | 
| **var.incident_configuration** | block  -  |  -  |  A `incident_configuration` block. | 
| **var.query_frequency** | string  `PT5H`  |  -  |  The ISO 8601 timespan duration between two consecutive queries. Defaults to `PT5H`. | 
| **var.query_period** | string  `PT5H`  |  -  |  The ISO 8601 timespan duration, which determine the time period of the data covered by the query. For example, it can query the past 10 minutes of data, or the past 6 hours of data. Defaults to `PT5H`. | 
| **var.suppression_duration** | string  `PT5H`  |  -  |  If `suppression_enabled` is `true`, this is ISO 8601 timespan duration, which specifies the amount of time the query should stop running after alert is generated. Defaults to `PT5H`. | 
| **var.suppression_enabled** | bool  `False`  |  -  |  Should the Sentinel Scheduled Alert Rulea stop running query after alert is generated? Defaults to `false`. | 
| **var.sentinel_entity_mapping** | block  -  |  -  |  A list of `sentinel_entity_mapping` blocks. | 
| **var.tactics** | string  -  |  `Collection`, `CommandAndControl`, `CredentialAccess`, `DefenseEvasion`, `Discovery`, `Execution`, `Exfiltration`, `ImpairProcessControl`, `InhibitResponseFunction`, `Impact`, `InitialAccess`, `LateralMovement`, `Persistence`, `PrivilegeEscalation`, `PreAttack`, `Reconnaissance`, `ResourceDevelopment`  |  A list of categories of attacks by which to classify the rule. Possible values are `Collection`, `CommandAndControl`, `CredentialAccess`, `DefenseEvasion`, `Discovery`, `Execution`, `Exfiltration`, `ImpairProcessControl`, `InhibitResponseFunction`, `Impact`, `InitialAccess`, `LateralMovement`, `Persistence`, `PrivilegeEscalation`, `PreAttack`, `Reconnaissance` and `ResourceDevelopment`. | 
| **var.techniques** | list  -  |  -  |  A list of techniques of attacks by which to classify the rule. | 
| **var.trigger_operator** | string  `GreaterThan`  |  `Equal`, `GreaterThan`, `LessThan`, `NotEqual`  |  The alert trigger operator, combined with `trigger_threshold`, setting alert threshold of this Sentinel Scheduled Alert Rule. Possible values are `Equal`, `GreaterThan`, `LessThan`, `NotEqual`. Defaults to `GreaterThan`. | 
| **var.trigger_threshold** | int  `0`  |  -  |  The baseline number of query results generated, combined with `trigger_operator`, setting alert threshold of this Sentinel Scheduled Alert Rule. Defaults to `0`. | 

### `alert_details_override` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `description_format` | string | No | - | The format containing columns name(s) to override the description of this Sentinel Alert Rule. |
| `display_name_format` | string | No | - | The format containing columns name(s) to override the name of this Sentinel Alert Rule. |
| `severity_column_name` | string | No | - | The column name to take the alert severity from. |
| `tactics_column_name` | string | No | - | The column name to take the alert tactics from. |
| `dynamic_property` | block | No | - | A list of 'dynamic_property' blocks. |

### `entity_mapping` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `entity_type` | string | Yes | - | The type of the entity. Possible values are 'Account', 'AzureResource', 'CloudApplication', 'DNS', 'File', 'FileHash', 'Host', 'IP', 'Mailbox', 'MailCluster', 'MailMessage', 'Malware', 'Process', 'RegistryKey', 'RegistryValue', 'SecurityGroup', 'SubmissionMail', 'URL'. |
| `field_mapping` | block | Yes | - | A list of 'field_mapping' blocks. |

### `event_grouping` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `aggregation_method` | string | Yes | - | The aggregation type of grouping the events. Possible values are 'AlertPerResult' and 'SingleAlert'. |

### `incident_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `create_incident` | string | Yes | - | Whether to create an incident from alerts triggered by this Sentinel Scheduled Alert Rule? |
| `grouping` | block | Yes | - | A 'grouping' block. |

### `sentinel_entity_mapping` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `column_name` | string | Yes | - | The column name to be mapped to the identifier. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Sentinel Scheduled Alert Rule. | 

Additionally, all variables are provided as outputs.
