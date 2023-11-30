# azurerm_sentinel_automation_rule

Manages a Sentinel Automation Rule.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "sentinel/sentinel_automation_rule" 
}

inputs = {
   name = "name of sentinel_automation_rule" 
   log_analytics_workspace_id = "log_analytics_workspace_id of sentinel_automation_rule" 
   display_name = "display_name of sentinel_automation_rule" 
   order = "order of sentinel_automation_rule" 
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
| **var.name** | string | True | -  |  -  |  The UUID which should be used for this Sentinel Automation Rule. Changing this forces a new Sentinel Automation Rule to be created. | 
| **var.log_analytics_workspace_id** | string | True | -  |  -  |  The ID of the Log Analytics Workspace where this Sentinel applies to. Changing this forces a new Sentinel Automation Rule to be created. | 
| **var.display_name** | string | True | -  |  -  |  The display name which should be used for this Sentinel Automation Rule. | 
| **var.order** | string | True | -  |  `1`, `1000`  |  The order of this Sentinel Automation Rule. Possible values varies between `1` and `1000`. | 
| **var.action_incident** | block | False | -  |  -  |  One or more `action_incident` blocks. | 
| **var.action_playbook** | block | False | -  |  -  |  One or more `action_playbook` blocks. | 
| **var.condition** | block | False | -  |  -  |  (Optional / **Deprecated** ) One or more `condition` blocks. | 
| **var.condition_json** | list | False | -  |  -  |  A JSON array of one or more condition JSON objects as is defined [here](https://learn.microsoft.com/en-us/rest/api/securityinsights/preview/automation-rules/create-or-update?tabs=HTTP#automationruletriggeringlogic). | 
| **var.enabled** | bool | False | `True`  |  -  |  Whether this Sentinel Automation Rule is enabled? Defaults to `true`. | 
| **var.expiration** | string | False | -  |  -  |  The time in RFC3339 format of kind `UTC` that determines when this Automation Rule should expire and be disabled. | 
| **var.triggers_on** | string | False | `Incidents`  |  `Alerts`, `Incidents`  |  Specifies what triggers this automation rule. Possible values are `Alerts` and `Incidents`. Defaults to `Incidents`. | 
| **var.triggers_when** | string | False | `Created`  |  `Created`, `Updated`  |  Specifies when will this automation rule be triggered. Possible values are `Created` and `Updated`. Defaults to `Created`. | 

### `action_incident` block structure

>`order` (string): (REQUIRED) The execution order of this action.
>`status` (string): The status to set to the incident. Possible values are: 'Active', 'Closed', 'New'.
>`classification` (string): The classification of the incident, when closing it. Possible values are: 'BenignPositive_SuspiciousButExpected', 'FalsePositive_InaccurateData', 'FalsePositive_IncorrectAlertLogic', 'TruePositive_SuspiciousActivity' and 'Undetermined'.
>`classification_comment` (string): The comment why the incident is to be closed.
>`labels` (string): Specifies a list of labels to add to the incident.
>`owner_id` (string): The object ID of the entity this incident is assigned to.
>`severity` (string): The severity to add to the incident. Possible values are 'High', 'Informational', 'Low' and 'Medium'.

### `action_playbook` block structure

>`logic_app_id` (string): (REQUIRED) The ID of the Logic App that defines the playbook's logic.
>`order` (string): (REQUIRED) The execution order of this action.
>`tenant_id` (string): The ID of the Tenant that owns the playbook.

### `condition` block structure

>`operator` (string): (REQUIRED) The operator to use for evaluate the condition. Possible values include: 'Equals', 'NotEquals', 'Contains', 'NotContains', 'StartsWith', 'NotStartsWith', 'EndsWith', 'NotEndsWith'.
>`property` (string): (REQUIRED) The property to use for evaluate the condition. Possible values are 'AccountAadTenantId', 'AccountAadUserId', 'AccountNTDomain', 'AccountName', 'AccountObjectGuid', 'AccountPUID', 'AccountSid', 'AccountUPNSuffix', 'AlertAnalyticRuleIds', 'AlertProductNames', 'AzureResourceResourceId', 'AzureResourceSubscriptionId', 'CloudApplicationAppId', 'CloudApplicationAppName', 'DNSDomainName', 'FileDirectory', 'FileHashValue', 'FileName', 'HostAzureID', 'HostNTDomain', 'HostName', 'HostNetBiosName', 'HostOSVersion', 'IPAddress', 'IncidentCustomDetailsKey', 'IncidentCustomDetailsValue', 'IncidentDescription', 'IncidentLabel', 'IncidentProviderName', 'IncidentRelatedAnalyticRuleIds', 'IncidentSeverity', 'IncidentStatus', 'IncidentTactics', 'IncidentTitle', 'IncidentUpdatedBySource', 'IoTDeviceId', 'IoTDeviceModel', 'IoTDeviceName', 'IoTDeviceOperatingSystem', 'IoTDeviceType', 'IoTDeviceVendor', 'MailMessageDeliveryAction', 'MailMessageDeliveryLocation', 'MailMessageP1Sender', 'MailMessageP2Sender', 'MailMessageRecipient', 'MailMessageSenderIP', 'MailMessageSubject', 'MailboxDisplayName', 'MailboxPrimaryAddress', 'MailboxUPN', 'MalwareCategory', 'MalwareName', 'ProcessCommandLine', 'ProcessId', 'RegistryKey', 'RegistryValueData' and 'Url'.
>`values` (string): (REQUIRED) Specifies a list of values to use for evaluate the condition.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Sentinel Automation Rule. | 

Additionally, all variables are provided as outputs.
