# azurerm_sentinel_alert_rule_nrt

Manages a Sentinel NRT Alert Rule.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "sentinel/sentinel_alert_rule_nrt"   
}

inputs = {
   name = "The name which should be used for this Sentinel NRT Alert Rule..."   
   # log_analytics_workspace_id → set in tfstate_inputs
   display_name = "The friendly name of this Sentinel NRT Alert Rule"   
   severity = "The alert severity of this Sentinel NRT Alert Rule"   
   query = "The query of this Sentinel NRT Alert Rule"   
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

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name which should be used for this Sentinel NRT Alert Rule. Changing this forces a new Sentinel NRT Alert Rule to be created. | 
| **log_analytics_workspace_id** | string |  -  |  The ID of the Log Analytics Workspace this Sentinel NRT Alert Rule belongs to. Changing this forces a new Sentinel NRT Alert Rule to be created. | 
| **display_name** | string |  -  |  The friendly name of this Sentinel NRT Alert Rule. | 
| **severity** | string |  `High`, `Medium`, `Low`, `Informational`  |  The alert severity of this Sentinel NRT Alert Rule. Possible values are `High`, `Medium`, `Low` and `Informational`. | 
| **query** | string |  -  |  The query of this Sentinel NRT Alert Rule. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **alert_details_override** | [block](#alert_details_override-block-structure) |  -  |  -  |  An `alert_details_override` block. | 
| **alert_rule_template_guid** | string |  -  |  -  |  The GUID of the alert rule template which is used for this Sentinel NRT Alert Rule. Changing this forces a new Sentinel NRT Alert Rule to be created. | 
| **alert_rule_template_version** | string |  -  |  -  |  The version of the alert rule template which is used for this Sentinel NRT Alert Rule. Changing this forces a new Sentinel NRT Alert Rule to be created. | 
| **custom_details** | string |  -  |  -  |  A map of string key-value pairs of columns to be attached to this Sentinel NRT Alert Rule. The key will appear as the field name in alerts and the value is the event parameter you wish to surface in the alerts. | 
| **description** | string |  -  |  -  |  The description of this Sentinel NRT Alert Rule. | 
| **enabled** | bool |  `True`  |  -  |  Should the Sentinel NRT Alert Rule be enabled? Defaults to `true`. | 
| **entity_mapping** | [block](#entity_mapping-block-structure) |  -  |  -  |  A list of `entity_mapping` blocks. | 
| **event_grouping** | [block](#event_grouping-block-structure) |  -  |  -  |  A `event_grouping` block. | 
| **sentinel_entity_mapping** | [block](#sentinel_entity_mapping-block-structure) |  -  |  -  |  A list of `sentinel_entity_mapping` blocks. | 
| **incident** | [block](#incident-block-structure) |  -  |  -  |  A `incident` block. | 
| **suppression_duration** | string |  `PT5H`  |  -  |  If `suppression_enabled` is `true`, this is ISO 8601 timespan duration, which specifies the amount of time the query should stop running after alert is generated. Defaults to `PT5H`. | 
| **suppression_enabled** | bool |  `False`  |  -  |  Should the Sentinel NRT Alert Rulea stop running query after alert is generated? Defaults to `false`. | 
| **tactics** | string |  -  |  `Collection`, `CommandAndControl`, `CredentialAccess`, `DefenseEvasion`, `Discovery`, `Execution`, `Exfiltration`, `Impact`, `ImpairProcessControl`, `InhibitResponseFunction`, `InitialAccess`, `LateralMovement`, `Persistence`, `PreAttack`, `PrivilegeEscalation`, `Reconnaissance`, `ResourceDevelopment`  |  A list of categories of attacks by which to classify the rule. Possible values are `Collection`, `CommandAndControl`, `CredentialAccess`, `DefenseEvasion`, `Discovery`, `Execution`, `Exfiltration`, `Impact`, `ImpairProcessControl`, `InhibitResponseFunction`, `InitialAccess`, `LateralMovement`, `Persistence`, `PreAttack`, `PrivilegeEscalation`, `Reconnaissance` and `ResourceDevelopment`. | 
| **techniques** | list |  -  |  -  |  A list of techniques of attacks by which to classify the rule. | 

### `sentinel_entity_mapping` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `column_name` | string | Yes | - | The column name to be mapped to the identifier. |

### `event_grouping` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `aggregation_method` | string | Yes | - | The aggregation type of grouping the events. Possible values are 'AlertPerResult' and 'SingleAlert'. |

### `dynamic_property` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the dynamic property. Possible Values are 'AlertLink', 'ConfidenceLevel', 'ConfidenceScore', 'ExtendedLinks', 'ProductComponentName', 'ProductName', 'ProviderName', 'RemediationSteps' and 'Techniques'. |
| `value` | string | Yes | - | The value of the dynamic property. Pssible Values are 'Caller', 'dcount_ResourceId' and 'EventSubmissionTimestamp'. |

### `field_mapping` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `identifier` | string | Yes | - | The identifier of the entity. |
| `column_name` | string | Yes | - | The column name to be mapped to the identifier. |

### `alert_details_override` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `description_format` | string | No | - | The format containing columns name(s) to override the description of this Sentinel Alert Rule. |
| `display_name_format` | string | No | - | The format containing columns name(s) to override the name of this Sentinel Alert Rule. |
| `severity_column_name` | string | No | - | The column name to take the alert severity from. |
| `tactics_column_name` | string | No | - | The column name to take the alert tactics from. |
| `dynamic_property` | [block](#dynamic_property-block-structure) | No | - | A list of 'dynamic_property' blocks. |

### `entity_mapping` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `entity_type` | string | Yes | - | The type of the entity. Possible values are 'Account', 'AzureResource', 'CloudApplication', 'DNS', 'File', 'FileHash', 'Host', 'IP', 'Mailbox', 'MailCluster', 'MailMessage', 'Malware', 'Process', 'RegistryKey', 'RegistryValue', 'SecurityGroup', 'SubmissionMail', 'URL'. |
| `field_mapping` | [block](#field_mapping-block-structure) | Yes | - | A list of 'field_mapping' blocks. |

### `grouping` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `enabled` | bool | No | True | Enable grouping incidents created from alerts triggered by this Sentinel NRT Alert Rule. Defaults to 'true'. |
| `lookback_duration` | string | No | PT5M | Limit the group to alerts created within the lookback duration (in ISO 8601 duration format). Defaults to 'PT5M'. |
| `reopen_closed_incidents` | bool | No | False | Whether to re-open closed matching incidents? Defaults to 'false'. |
| `entity_matching_method` | string | No | AnyAlert | The method used to group incidents. Possible values are 'AnyAlert', 'Selected' and 'AllEntities'. Defaults to 'AnyAlert'. |
| `by_entities` | string | No | - | A list of entity types to group by, only when the 'entity_matching_method' is 'Selected'. Possible values are 'Account', 'AzureResource', 'CloudApplication', 'DNS', 'File', 'FileHash', 'Host', 'IP', 'Mailbox', 'MailCluster', 'MailMessage', 'Malware', 'Process', 'RegistryKey', 'RegistryValue', 'SecurityGroup', 'SubmissionMail', 'URL'. |
| `by_alert_details` | string | No | - | A list of alert details to group by, only when the 'entity_matching_method' is 'Selected'. Possible values are 'DisplayName' and 'Severity'. |
| `by_custom_details` | list | No | - | A list of custom details keys to group by, only when the 'entity_matching_method' is 'Selected'. Only keys defined in the 'custom_details' may be used. |

### `incident` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `create_incident_enabled` | bool | Yes | - | Whether to create an incident from alerts triggered by this Sentinel NRT Alert Rule? |
| `grouping` | [block](#grouping-block-structure) | Yes | - | A 'grouping' block. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Sentinel NRT Alert Rule. | 

Additionally, all variables are provided as outputs.
