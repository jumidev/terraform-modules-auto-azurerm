# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Sentinel Scheduled Alert Rule. Changing this forces a new Sentinel Scheduled Alert Rule to be created."
  type        = string

}
variable "log_analytics_workspace_id" {
  description = "(REQUIRED) The ID of the Log Analytics Workspace this Sentinel Scheduled Alert Rule belongs to. Changing this forces a new Sentinel Scheduled Alert Rule to be created."
  type        = string

}
variable "display_name" {
  description = "(REQUIRED) The friendly name of this Sentinel Scheduled Alert Rule."
  type        = string

}
variable "severity" {
  description = "(REQUIRED) The alert severity of this Sentinel Scheduled Alert Rule. Possible values are 'High', 'Medium', 'Low' and 'Informational'."
  type        = string

}
variable "query" {
  description = "(REQUIRED) The query of this Sentinel Scheduled Alert Rule."
  type        = string

}

# OPTIONAL VARIABLES

variable "alert_details_override" {
  description = "An 'alert_details_override' block."
  type        = map(any)
  default     = null
}
#
# alert_details_override block structure:
#   description_format (string)           : The format containing columns name(s) to override the description of this Sentinel Alert Rule.
#   display_name_format (string)          : The format containing columns name(s) to override the name of this Sentinel Alert Rule.
#   severity_column_name (string)         : The column name to take the alert severity from.
#   tactics_column_name (string)          : The column name to take the alert tactics from.
#   dynamic_property (block)              : A list of 'dynamic_property' blocks.
#
# dynamic_property block structure:
#   name (string)                   : (REQUIRED) The name of the dynamic property. Possible Values are 'AlertLink', 'ConfidenceLevel', 'ConfidenceScore', 'ExtendedLinks', 'ProductComponentName', 'ProductName', 'ProviderName', 'RemediationSteps' and 'Techniques'.
#   value (string)                  : (REQUIRED) The value of the dynamic property. Pssible Values are 'Caller', 'dcount_ResourceId' and 'EventSubmissionTimestamp'.


variable "alert_rule_template_guid" {
  description = "The GUID of the alert rule template which is used for this Sentinel Scheduled Alert Rule. Changing this forces a new Sentinel Scheduled Alert Rule to be created."
  type        = string
  default     = null
}
variable "alert_rule_template_version" {
  description = "The version of the alert rule template which is used for this Sentinel Scheduled Alert Rule. Changing this forces a new Sentinel Scheduled Alert Rule to be created."
  type        = string
  default     = null
}
variable "custom_details" {
  description = "A map of string key-value pairs of columns to be attached to this Sentinel Scheduled Alert Rule. The key will appear as the field name in alerts and the value is the event parameter you wish to surface in the alerts."
  type        = string
  default     = null
}
variable "description" {
  description = "The description of this Sentinel Scheduled Alert Rule."
  type        = string
  default     = null
}
variable "enabled" {
  description = "Should the Sentinel Scheduled Alert Rule be enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "entity_mapping" {
  description = "A list of 'entity_mapping' blocks."
  type        = map(map(any))
  default     = null
}
#
# entity_mapping block structure:
#   entity_type (string)          : (REQUIRED) The type of the entity. Possible values are 'Account', 'AzureResource', 'CloudApplication', 'DNS', 'File', 'FileHash', 'Host', 'IP', 'Mailbox', 'MailCluster', 'MailMessage', 'Malware', 'Process', 'RegistryKey', 'RegistryValue', 'SecurityGroup', 'SubmissionMail', 'URL'.
#   field_mapping (block)         : (REQUIRED) A list of 'field_mapping' blocks.
#
# field_mapping block structure:
#   identifier (string)          : (REQUIRED) The identifier of the entity.
#   column_name (string)         : (REQUIRED) The column name to be mapped to the identifier.


variable "event_grouping" {
  description = "A 'event_grouping' block."
  type        = map(any)
  default     = null
}
#
# event_grouping block structure:
#   aggregation_method (string)   : (REQUIRED) The aggregation type of grouping the events. Possible values are 'AlertPerResult' and 'SingleAlert'.


variable "incident_configuration" {
  description = "A 'incident_configuration' block."
  type        = map(any)
  default     = null
}
#
# incident_configuration block structure:
#   create_incident (string)              : (REQUIRED) Whether to create an incident from alerts triggered by this Sentinel Scheduled Alert Rule?
#   grouping (block)                      : (REQUIRED) A 'grouping' block.
#
# grouping block structure       :
#   enabled (bool)                 : Enable grouping incidents created from alerts triggered by this Sentinel Scheduled Alert Rule. Defaults to 'true'.
#   lookback_duration (string)     : Limit the group to alerts created within the lookback duration (in ISO 8601 duration format). Defaults to 'PT5M'.
#   reopen_closed_incidents (bool) : Whether to re-open closed matching incidents? Defaults to 'false'.
#   entity_matching_method (string): The method used to group incidents. Possible values are 'AnyAlert', 'Selected' and 'AllEntities'. Defaults to 'AnyAlert'.
#   group_by_entities (string)     : A list of entity types to group by, only when the 'entity_matching_method' is 'Selected'. Possible values are 'Account', 'AzureResource', 'CloudApplication', 'DNS', 'File', 'FileHash', 'Host', 'IP', 'Mailbox', 'MailCluster', 'MailMessage', 'Malware', 'Process', 'RegistryKey', 'RegistryValue', 'SecurityGroup', 'SubmissionMail', 'URL'.
#   group_by_alert_details (string): A list of alert details to group by, only when the 'entity_matching_method' is 'Selected'. Possible values are 'DisplayName' and 'Severity'.
#   group_by_custom_details (list) : A list of custom details keys to group by, only when the 'entity_matching_method' is 'Selected'. Only keys defined in the 'custom_details' may be used.


variable "query_frequency" {
  description = "The ISO 8601 timespan duration between two consecutive queries. Defaults to 'PT5H'."
  type        = string
  default     = "PT5H"
}
variable "query_period" {
  description = "The ISO 8601 timespan duration, which determine the time period of the data covered by the query. For example, it can query the past 10 minutes of data, or the past 6 hours of data. Defaults to 'PT5H'."
  type        = string
  default     = "PT5H"
}
variable "suppression_duration" {
  description = "If 'suppression_enabled' is 'true', this is ISO 8601 timespan duration, which specifies the amount of time the query should stop running after alert is generated. Defaults to 'PT5H'."
  type        = string
  default     = "PT5H"
}
variable "suppression_enabled" {
  description = "Should the Sentinel Scheduled Alert Rulea stop running query after alert is generated? Defaults to 'false'."
  type        = bool
  default     = false
}
variable "sentinel_entity_mapping" {
  description = "A list of 'sentinel_entity_mapping' blocks."
  type        = map(map(any))
  default     = null
}
#
# sentinel_entity_mapping block structure:
#   column_name (string)                   : (REQUIRED) The column name to be mapped to the identifier.


variable "tactics" {
  description = "A list of categories of attacks by which to classify the rule. Possible values are 'Collection', 'CommandAndControl', 'CredentialAccess', 'DefenseEvasion', 'Discovery', 'Execution', 'Exfiltration', 'ImpairProcessControl', 'InhibitResponseFunction', 'Impact', 'InitialAccess', 'LateralMovement', 'Persistence', 'PrivilegeEscalation', 'PreAttack', 'Reconnaissance' and 'ResourceDevelopment'."
  type        = string
  default     = null
}
variable "techniques" {
  description = "A list of techniques of attacks by which to classify the rule."
  type        = list(any)
  default     = []
}
variable "trigger_operator" {
  description = "The alert trigger operator, combined with 'trigger_threshold', setting alert threshold of this Sentinel Scheduled Alert Rule. Possible values are 'Equal', 'GreaterThan', 'LessThan', 'NotEqual'. Defaults to 'GreaterThan'."
  type        = string
  default     = "GreaterThan"
}
variable "trigger_threshold" {
  description = "The baseline number of query results generated, combined with 'trigger_operator', setting alert threshold of this Sentinel Scheduled Alert Rule. Defaults to '0'."
  type        = number
  default     = "0"
}
