# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Monitor Action Rule. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) Specifies the name of the resource group in which the Monitor Action Rule should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "suppression" {
  description = "(REQUIRED) A 'suppression' block."
  type        = map(any)
}
#
# suppression block structure:
#   recurrence_type (string)   : (REQUIRED) Specifies the type of suppression. Possible values are 'Always', 'Daily', 'Monthly', 'Once', and 'Weekly'.
#   schedule (block)           : A 'schedule' block. Required if 'recurrence_type' is 'Daily', 'Monthly', 'Once' or 'Weekly'.
#
# schedule block structure   :
#   start_date_utc (string)    : (REQUIRED) specifies the recurrence UTC start datetime (Y-m-d'T'H:M:S'Z').
#   end_date_utc (string)      : (REQUIRED) specifies the recurrence UTC end datetime (Y-m-d'T'H:M:S'Z').
#   recurrence_weekly (string) : specifies the list of dayOfWeek to recurrence. Possible values are 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday' and 'Saturday'.
#   recurrence_monthly (string): specifies the list of dayOfMonth to recurrence. Possible values are between '1' - '31'. Required if 'recurrence_type' is 'Monthly'.



# OPTIONAL VARIABLES

variable "description" {
  description = "Specifies a description for the Action Rule."
  type        = string
  default     = null
}
variable "enabled" {
  description = "Is the Action Rule enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "scope" {
  description = "A 'scope' block."
  type        = map(any)
  default     = null
}
#
# scope block structure:
#   type (string)        : (REQUIRED) Specifies the type of target scope. Possible values are 'ResourceGroup' and 'Resource'.
#   resource_ids (list)  : (REQUIRED) A list of resource IDs of the given scope type which will be the target of action rule.


variable "condition" {
  description = "A 'condition' block."
  type        = map(any)
  default     = null
}
#
# condition block structure   :
#   alert_context (block)       : A 'alert_context' block.
#   alert_rule_id (block)       : A 'alert_rule_id' block.
#   description (block)         : A 'description' block.
#   monitor (block)             : A 'monitor' block.
#   monitor_service (block)     : A 'monitor_service' block.
#   severity (block)            : A 'severity' block.
#   target_resource_type (block): A 'target_resource_type' block.
#
# monitor block structure:
#   operator (string)      : (REQUIRED) The operator for a given condition. Possible values are 'Equals' and 'NotEquals'.
#   values (string)        : (REQUIRED) A list of values to match for a given condition. Possible values are 'Fired' and 'Resolved'.
#
# monitor_service block structure:
#   operator (string)              : (REQUIRED) The operator for a given condition. Possible values are 'Equals' and 'NotEquals'.
#   values (string)                : (REQUIRED) A list of values to match for a given condition. Possible values are 'ActivityLog Administrative', 'ActivityLog Autoscale', 'ActivityLog Policy', 'ActivityLog Recommendation', 'ActivityLog Security', 'Application Insights', 'Azure Backup', 'Azure Stack Edge', 'Azure Stack Hub', 'Custom', 'Data Box Gateway', 'Health Platform', 'Log Alerts V2', 'Log Analytics', 'Platform', 'Resource Health', 'Smart Detector' and 'VM Insights - Health'.
#
# alert_rule_id block structure:
#   operator (string)            : (REQUIRED) The operator for a given condition. Possible values are 'Equals', 'NotEquals', 'Contains', and 'DoesNotContain'.
#   values (list)                : (REQUIRED) A list of values to match for a given condition.
#
# target_resource_type block structure:
#   operator (string)                   : (REQUIRED) The operator for a given condition. Possible values are 'Equals' and 'NotEquals'.
#   values (list)                       : (REQUIRED) A list of values to match for a given condition. The values should be valid resource types.
#
# alert_context block structure:
#   operator (string)            : (REQUIRED) The operator for a given condition. Possible values are 'Equals', 'NotEquals', 'Contains', and 'DoesNotContain'.
#   values (list)                : (REQUIRED) A list of values to match for a given condition.
#
# description block structure:
#   operator (string)          : (REQUIRED) The operator for a given condition. Possible values are 'Equals', 'NotEquals', 'Contains', and 'DoesNotContain'.
#   values (list)              : (REQUIRED) A list of values to match for a given condition.
#
# severity block structure:
#   operator (string)       : (REQUIRED) The operator for a given condition. Possible values are 'Equals'and 'NotEquals'.
#   values (string)         : (REQUIRED) A list of values to match for a given condition. Possible values are 'Sev0', 'Sev1', 'Sev2', 'Sev3', and 'Sev4'.


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
