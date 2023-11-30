# azurerm_sentinel_alert_rule_nrt

Manages a Sentinel NRT Alert Rule.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "sentinel/sentinel_alert_rule_nrt" 
}

inputs = {
   name = "name of sentinel_alert_rule_nrt" 
   log_analytics_workspace_id = "log_analytics_workspace_id of sentinel_alert_rule_nrt" 
   display_name = "display_name of sentinel_alert_rule_nrt" 
   severity = "severity of sentinel_alert_rule_nrt" 
   query = "query of sentinel_alert_rule_nrt" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name which should be used for this Sentinel NRT Alert Rule. Changing this forces a new Sentinel NRT Alert Rule to be created. | 
| **var.log_analytics_workspace_id** | string | True | -  |  -  |  The ID of the Log Analytics Workspace this Sentinel NRT Alert Rule belongs to. Changing this forces a new Sentinel NRT Alert Rule to be created. | 
| **var.display_name** | string | True | -  |  -  |  The friendly name of this Sentinel NRT Alert Rule. | 
| **var.severity** | string | True | -  |  `High`, `Medium`, `Low`, `Informational`  |  The alert severity of this Sentinel NRT Alert Rule. Possible values are `High`, `Medium`, `Low` and `Informational`. | 
| **var.query** | string | True | -  |  -  |  The query of this Sentinel NRT Alert Rule. | 
| **var.alert_details_override** | block | False | -  |  -  |  An `alert_details_override` block. | 
| **var.alert_rule_template_guid** | string | False | -  |  -  |  The GUID of the alert rule template which is used for this Sentinel NRT Alert Rule. Changing this forces a new Sentinel NRT Alert Rule to be created. | 
| **var.alert_rule_template_version** | string | False | -  |  -  |  The version of the alert rule template which is used for this Sentinel NRT Alert Rule. Changing this forces a new Sentinel NRT Alert Rule to be created. | 
| **var.custom_details** | string | False | -  |  -  |  A map of string key-value pairs of columns to be attached to this Sentinel NRT Alert Rule. The key will appear as the field name in alerts and the value is the event parameter you wish to surface in the alerts. | 
| **var.description** | string | False | -  |  -  |  The description of this Sentinel NRT Alert Rule. | 
| **var.enabled** | bool | False | `True`  |  -  |  Should the Sentinel NRT Alert Rule be enabled? Defaults to `true`. | 
| **var.entity_mapping** | block | False | -  |  -  |  A list of `entity_mapping` blocks. | 
| **var.event_grouping** | block | False | -  |  -  |  A `event_grouping` block. | 
| **var.sentinel_entity_mapping** | block | False | -  |  -  |  A list of `sentinel_entity_mapping` blocks. | 
| **var.incident** | block | False | -  |  -  |  A `incident` block. | 
| **var.suppression_duration** | string | False | `PT5H`  |  -  |  If `suppression_enabled` is `true`, this is ISO 8601 timespan duration, which specifies the amount of time the query should stop running after alert is generated. Defaults to `PT5H`. | 
| **var.suppression_enabled** | bool | False | `False`  |  -  |  Should the Sentinel NRT Alert Rulea stop running query after alert is generated? Defaults to `false`. | 
| **var.tactics** | string | False | -  |  `Collection`, `CommandAndControl`, `CredentialAccess`, `DefenseEvasion`, `Discovery`, `Execution`, `Exfiltration`, `Impact`, `ImpairProcessControl`, `InhibitResponseFunction`, `InitialAccess`, `LateralMovement`, `Persistence`, `PreAttack`, `PrivilegeEscalation`, `Reconnaissance`, `ResourceDevelopment`  |  A list of categories of attacks by which to classify the rule. Possible values are `Collection`, `CommandAndControl`, `CredentialAccess`, `DefenseEvasion`, `Discovery`, `Execution`, `Exfiltration`, `Impact`, `ImpairProcessControl`, `InhibitResponseFunction`, `InitialAccess`, `LateralMovement`, `Persistence`, `PreAttack`, `PrivilegeEscalation`, `Reconnaissance` and `ResourceDevelopment`. | 
| **var.techniques** | list | False | -  |  -  |  A list of techniques of attacks by which to classify the rule. | 

### `alert_details_override` block structure

> `description_format` (string): The format containing columns name(s) to override the description of this Sentinel Alert Rule.
> `display_name_format` (string): The format containing columns name(s) to override the name of this Sentinel Alert Rule.
> `severity_column_name` (string): The column name to take the alert severity from.
> `tactics_column_name` (string): The column name to take the alert tactics from.
> `dynamic_property` (block): A list of 'dynamic_property' blocks.

### `entity_mapping` block structure

> `entity_type` (string): (REQUIRED) The type of the entity. Possible values are 'Account', 'AzureResource', 'CloudApplication', 'DNS', 'File', 'FileHash', 'Host', 'IP', 'Mailbox', 'MailCluster', 'MailMessage', 'Malware', 'Process', 'RegistryKey', 'RegistryValue', 'SecurityGroup', 'SubmissionMail', 'URL'.
> `field_mapping` (block): (REQUIRED) A list of 'field_mapping' blocks.

### `event_grouping` block structure

> `aggregation_method` (string): (REQUIRED) The aggregation type of grouping the events. Possible values are 'AlertPerResult' and 'SingleAlert'.

### `sentinel_entity_mapping` block structure

> `column_name` (string): (REQUIRED) The column name to be mapped to the identifier.

### `incident` block structure

> `create_incident_enabled` (bool): (REQUIRED) Whether to create an incident from alerts triggered by this Sentinel NRT Alert Rule?
> `grouping` (block): (REQUIRED) A 'grouping' block.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Sentinel NRT Alert Rule. | 

Additionally, all variables are provided as outputs.
