# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The UUID which should be used for this Sentinel Automation Rule. Changing this forces a new Sentinel Automation Rule to be created."
  type        = string

}
variable "log_analytics_workspace_id" {
  description = "(REQUIRED) The ID of the Log Analytics Workspace where this Sentinel applies to. Changing this forces a new Sentinel Automation Rule to be created."
  type        = string

}
variable "display_name" {
  description = "(REQUIRED) The display name which should be used for this Sentinel Automation Rule."
  type        = string

}
variable "order" {
  description = "(REQUIRED) The order of this Sentinel Automation Rule. Possible values varies between '1' and '1000'."
  type        = string

}

# OPTIONAL VARIABLES

variable "action_incident" {
  description = "One or more 'action_incident' blocks."
  type        = map(map(any))
  default     = null
}
#
# action_incident block structure:
#   order (string)                 : (REQUIRED) The execution order of this action.
#   status (string)                : The status to set to the incident. Possible values are: 'Active', 'Closed', 'New'.
#   classification (string)        : The classification of the incident, when closing it. Possible values are: 'BenignPositive_SuspiciousButExpected', 'FalsePositive_InaccurateData', 'FalsePositive_IncorrectAlertLogic', 'TruePositive_SuspiciousActivity' and 'Undetermined'.
#   classification_comment (string): The comment why the incident is to be closed.
#   labels (string)                : Specifies a list of labels to add to the incident.
#   owner_id (string)              : The object ID of the entity this incident is assigned to.
#   severity (string)              : The severity to add to the incident. Possible values are 'High', 'Informational', 'Low' and 'Medium'.


variable "action_playbook" {
  description = "One or more 'action_playbook' blocks."
  type        = map(map(any))
  default     = null
}
#
# action_playbook block structure:
#   logic_app_id (string)          : (REQUIRED) The ID of the Logic App that defines the playbook's logic.
#   order (string)                 : (REQUIRED) The execution order of this action.
#   tenant_id (string)             : The ID of the Tenant that owns the playbook.


variable "condition" {
  description = "(Optional / **Deprecated** ) One or more 'condition' blocks."
  type        = map(map(any))
  default     = null
}
#
# condition block structure:
#   operator (string)        : (REQUIRED) The operator to use for evaluate the condition. Possible values include: 'Equals', 'NotEquals', 'Contains', 'NotContains', 'StartsWith', 'NotStartsWith', 'EndsWith', 'NotEndsWith'.
#   property (string)        : (REQUIRED) The property to use for evaluate the condition. Possible values are 'AccountAadTenantId', 'AccountAadUserId', 'AccountNTDomain', 'AccountName', 'AccountObjectGuid', 'AccountPUID', 'AccountSid', 'AccountUPNSuffix', 'AlertAnalyticRuleIds', 'AlertProductNames', 'AzureResourceResourceId', 'AzureResourceSubscriptionId', 'CloudApplicationAppId', 'CloudApplicationAppName', 'DNSDomainName', 'FileDirectory', 'FileHashValue', 'FileName', 'HostAzureID', 'HostNTDomain', 'HostName', 'HostNetBiosName', 'HostOSVersion', 'IPAddress', 'IncidentCustomDetailsKey', 'IncidentCustomDetailsValue', 'IncidentDescription', 'IncidentLabel', 'IncidentProviderName', 'IncidentRelatedAnalyticRuleIds', 'IncidentSeverity', 'IncidentStatus', 'IncidentTactics', 'IncidentTitle', 'IncidentUpdatedBySource', 'IoTDeviceId', 'IoTDeviceModel', 'IoTDeviceName', 'IoTDeviceOperatingSystem', 'IoTDeviceType', 'IoTDeviceVendor', 'MailMessageDeliveryAction', 'MailMessageDeliveryLocation', 'MailMessageP1Sender', 'MailMessageP2Sender', 'MailMessageRecipient', 'MailMessageSenderIP', 'MailMessageSubject', 'MailboxDisplayName', 'MailboxPrimaryAddress', 'MailboxUPN', 'MalwareCategory', 'MalwareName', 'ProcessCommandLine', 'ProcessId', 'RegistryKey', 'RegistryValueData' and 'Url'.
#   values (string)          : (REQUIRED) Specifies a list of values to use for evaluate the condition.


variable "condition_json" {
  description = "A JSON array of one or more condition JSON objects as is defined [here](https://learn.microsoft.com/en-us/rest/api/securityinsights/preview/automation-rules/create-or-update?tabs=HTTP#automationruletriggeringlogic)."
  type        = list(any)
  default     = []
}
variable "enabled" {
  description = "Whether this Sentinel Automation Rule is enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "expiration" {
  description = "The time in RFC3339 format of kind 'UTC' that determines when this Automation Rule should expire and be disabled."
  type        = string
  default     = null
}
variable "triggers_on" {
  description = "Specifies what triggers this automation rule. Possible values are 'Alerts' and 'Incidents'. Defaults to 'Incidents'."
  type        = string
  default     = "Incidents"
}
variable "triggers_when" {
  description = "Specifies when will this automation rule be triggered. Possible values are 'Created' and 'Updated'. Defaults to 'Created'."
  type        = string
  default     = "Created"
}
