# azurerm_sentinel_automation_rule

Manages a Sentinel Automation Rule.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "sentinel/sentinel_automation_rule"   
}

inputs = {
   name = "The UUID which should be used for this Sentinel Automation Rule..."   
   # log_analytics_workspace_id → set in component_inputs
   display_name = "The display name which should be used for this Sentinel Automation Rule..."   
   order = "The order of this Sentinel Automation Rule"   
}

component_inputs = {
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
| **name** | string |  -  |  The UUID which should be used for this Sentinel Automation Rule. Changing this forces a new Sentinel Automation Rule to be created. | 
| **log_analytics_workspace_id** | string |  -  |  The ID of the Log Analytics Workspace where this Sentinel applies to. Changing this forces a new Sentinel Automation Rule to be created. | 
| **display_name** | string |  -  |  The display name which should be used for this Sentinel Automation Rule. | 
| **order** | string |  `1`, `1000`  |  The order of this Sentinel Automation Rule. Possible values varies between `1` and `1000`. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **action_incident** | [block](#action_incident-block-structure) |  -  |  -  |  One or more `action_incident` blocks. | 
| **action_playbook** | [block](#action_playbook-block-structure) |  -  |  -  |  One or more `action_playbook` blocks. | 
| **condition** | [block](#condition-block-structure) |  -  |  -  |  (Optional / **Deprecated** ) One or more `condition` blocks. | 
| **condition_json** | list |  -  |  -  |  A JSON array of one or more condition JSON objects as is defined [here](https://learn.microsoft.com/en-us/rest/api/securityinsights/preview/automation-rules/create-or-update?tabs=HTTP#automationruletriggeringlogic). | 
| **enabled** | bool |  `True`  |  -  |  Whether this Sentinel Automation Rule is enabled? Defaults to `true`. | 
| **expiration** | string |  -  |  -  |  The time in RFC3339 format of kind `UTC` that determines when this Automation Rule should expire and be disabled. | 
| **triggers_on** | string |  `Incidents`  |  `Alerts`, `Incidents`  |  Specifies what triggers this automation rule. Possible values are `Alerts` and `Incidents`. Defaults to `Incidents`. | 
| **triggers_when** | string |  `Created`  |  `Created`, `Updated`  |  Specifies when will this automation rule be triggered. Possible values are `Created` and `Updated`. Defaults to `Created`. | 

### `condition` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `operator` | string | Yes | - | The operator to use for evaluate the condition. Possible values include: 'Equals', 'NotEquals', 'Contains', 'NotContains', 'StartsWith', 'NotStartsWith', 'EndsWith', 'NotEndsWith'. |
| `property` | string | Yes | - | The property to use for evaluate the condition. Possible values are 'AccountAadTenantId', 'AccountAadUserId', 'AccountNTDomain', 'AccountName', 'AccountObjectGuid', 'AccountPUID', 'AccountSid', 'AccountUPNSuffix', 'AlertAnalyticRuleIds', 'AlertProductNames', 'AzureResourceResourceId', 'AzureResourceSubscriptionId', 'CloudApplicationAppId', 'CloudApplicationAppName', 'DNSDomainName', 'FileDirectory', 'FileHashValue', 'FileName', 'HostAzureID', 'HostNTDomain', 'HostName', 'HostNetBiosName', 'HostOSVersion', 'IPAddress', 'IncidentCustomDetailsKey', 'IncidentCustomDetailsValue', 'IncidentDescription', 'IncidentLabel', 'IncidentProviderName', 'IncidentRelatedAnalyticRuleIds', 'IncidentSeverity', 'IncidentStatus', 'IncidentTactics', 'IncidentTitle', 'IncidentUpdatedBySource', 'IoTDeviceId', 'IoTDeviceModel', 'IoTDeviceName', 'IoTDeviceOperatingSystem', 'IoTDeviceType', 'IoTDeviceVendor', 'MailMessageDeliveryAction', 'MailMessageDeliveryLocation', 'MailMessageP1Sender', 'MailMessageP2Sender', 'MailMessageRecipient', 'MailMessageSenderIP', 'MailMessageSubject', 'MailboxDisplayName', 'MailboxPrimaryAddress', 'MailboxUPN', 'MalwareCategory', 'MalwareName', 'ProcessCommandLine', 'ProcessId', 'RegistryKey', 'RegistryValueData' and 'Url'. |
| `values` | string | Yes | - | Specifies a list of values to use for evaluate the condition. |

### `action_playbook` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `logic_app_id` | string | Yes | - | The ID of the Logic App that defines the playbook's logic. |
| `order` | string | Yes | - | The execution order of this action. |
| `tenant_id` | string | No | - | The ID of the Tenant that owns the playbook. |

### `action_incident` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `order` | string | Yes | - | The execution order of this action. |
| `status` | string | No | - | The status to set to the incident. Possible values are: 'Active', 'Closed', 'New'. |
| `classification` | string | No | - | The classification of the incident, when closing it. Possible values are: 'BenignPositive_SuspiciousButExpected', 'FalsePositive_InaccurateData', 'FalsePositive_IncorrectAlertLogic', 'TruePositive_SuspiciousActivity' and 'Undetermined'. |
| `classification_comment` | string | No | - | The comment why the incident is to be closed. |
| `labels` | string | No | - | Specifies a list of labels to add to the incident. |
| `owner_id` | string | No | - | The object ID of the entity this incident is assigned to. |
| `severity` | string | No | - | The severity to add to the incident. Possible values are 'High', 'Informational', 'Low' and 'Medium'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Sentinel Automation Rule. | 

Additionally, all variables are provided as outputs.
