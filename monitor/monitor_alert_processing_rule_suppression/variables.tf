# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name which should be used for this Alert Processing Rule. Changing this forces a new Alert Processing Rule to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group where the Alert Processing Rule should exist. Changing this forces a new Alert Processing Rule to be created."
  type        = string

}
variable "scopes" {
  description = "(REQUIRED) A list of resource IDs which will be the target of Alert Processing Rule."
  type        = list(any)

}

# OPTIONAL VARIABLES

variable "condition" {
  description = "A 'condition' block."
  type        = map(any)
  default     = null
}
#
# condition block structure    :
#   alert_context (block)        : A 'alert_context' block.
#   alert_rule_id (block)        : A 'alert_rule_id' block.
#   alert_rule_name (block)      : A 'alert_rule_name' block.
#   description (block)          : A 'description' block.
#   monitor_condition (block)    : A 'monitor_condition' block.
#   monitor_service (block)      : A 'monitor_service' block.
#   severity (block)             : A 'severity' block.
#   signal_type (block)          : A 'signal_type' block.
#   target_resource (block)      : A 'target_resource' block.
#   target_resource_group (block): A 'target_resource_group' block.
#   target_resource_type (block) : A 'target_resource_type' block.
#
# target_resource_type block structure:
#   operator (string)                   : (REQUIRED) The operator for a given condition. Possible values are 'Equals', 'NotEquals', 'Contains', and 'DoesNotContain'.
#   values (list)                       : (REQUIRED) A list of values to match for a given condition. The values should be valid resource types. (e.g. Microsoft.Compute/VirtualMachines)
#
# alert_rule_name block structure:
#   operator (string)              : (REQUIRED) The operator for a given condition. Possible values are 'Equals', 'NotEquals', 'Contains', and 'DoesNotContain'.
#   values (string)                : (REQUIRED) Specifies a list of values to match for a given condition.
#
# monitor_service block structure:
#   operator (string)              : (REQUIRED) The operator for a given condition. Possible values are 'Equals' and 'NotEquals'.
#   values (string)                : (REQUIRED) A list of values to match for a given condition. Possible values are 'ActivityLog Administrative', 'ActivityLog Autoscale', 'ActivityLog Policy', 'ActivityLog Recommendation', 'ActivityLog Security', 'Application Insights', 'Azure Backup', 'Azure Stack Edge', 'Azure Stack Hub', 'Custom', 'Data Box Gateway', 'Health Platform', 'Log Alerts V2', 'Log Analytics', 'Platform', 'Prometheus', 'Resource Health', 'Smart Detector', and 'VM Insights - Health'.
#
# target_resource_group block structure:
#   operator (string)                    : (REQUIRED) The operator for a given condition. Possible values are 'Equals', 'NotEquals', 'Contains', and 'DoesNotContain'.
#   values (list)                        : (REQUIRED) A list of values to match for a given condition. The values should be valid resource group IDs.
#
# alert_rule_id block structure:
#   operator (string)            : (REQUIRED) The operator for a given condition. Possible values are 'Equals', 'NotEquals', 'Contains', and 'DoesNotContain'.
#   values (string)              : (REQUIRED) Specifies a list of values to match for a given condition.
#
# signal_type block structure:
#   operator (string)          : (REQUIRED) The operator for a given condition. Possible values are 'Equals' and 'NotEquals'.
#   values (string)            : (REQUIRED) Specifies a list of values to match for a given condition. Possible values are 'Metric', 'Log', 'Unknown', and 'Health'.
#
# monitor_condition block structure:
#   operator (string)                : (REQUIRED) The operator for a given condition. Possible values are 'Equals' and 'NotEquals'.
#   values (string)                  : (REQUIRED) Specifies a list of values to match for a given condition. Possible values are 'Fired' and 'Resolved'.
#
# severity block structure:
#   operator (string)       : (REQUIRED) The operator for a given condition. Possible values are 'Equals' and 'NotEquals'.
#   values (string)         : (REQUIRED) Specifies list of values to match for a given condition. Possible values are 'Sev0', 'Sev1', 'Sev2', 'Sev3', and 'Sev4'.
#
# target_resource block structure:
#   operator (string)              : (REQUIRED) The operator for a given condition. Possible values are 'Equals', 'NotEquals', 'Contains', and 'DoesNotContain'.
#   values (list)                  : (REQUIRED) A list of values to match for a given condition. The values should be valid resource IDs.
#
# description block structure:
#   operator (string)          : (REQUIRED) The operator for a given condition. Possible values are 'Equals', 'NotEquals', 'Contains', and 'DoesNotContain'.
#   values (string)            : (REQUIRED) Specifies a list of values to match for a given condition.
#
# alert_context block structure:
#   operator (string)            : (REQUIRED) The operator for a given condition. Possible values are 'Equals', 'NotEquals', 'Contains', and 'DoesNotContain'.
#   values (string)              : (REQUIRED) Specifies a list of values to match for a given condition.


variable "description" {
  description = "Specifies a description for the Alert Processing Rule."
  type        = string
  default     = null
}
variable "enabled" {
  description = "Should the Alert Processing Rule be enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "schedule" {
  description = "A 'schedule' block."
  type        = map(any)
  default     = null
}
#
# schedule block structure:
#   effective_from (string) : Specifies the Alert Processing Rule effective start time (Y-m-d'T'H:M:S).
#   effective_until (string): Specifies the Alert Processing Rule effective end time (Y-m-d'T'H:M:S).
#   recurrence (block)      : A 'recurrence' block.
#   time_zone (string)      : The time zone (e.g. Pacific Standard time, Eastern Standard Time). Defaults to 'UTC'. [possible values are defined here](https://docs.microsoft.com/en-us/previous-versions/windows/embedded/ms912391(v=winembedded.11)).
#
# recurrence block structure:
#   daily (list)              : One or more 'daily' blocks.
#   weekly (block)            : One or more 'weekly' blocks.
#   monthly (list)            : One or more 'monthly' blocks.
#
# weekly block structure:
#   days_of_week (string) : (REQUIRED) Specifies a list of dayOfWeek to recurrence. Possible values are 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', and 'Saturday'.
#   start_time (string)   : Specifies the recurrence start time (H:M:S).
#   end_time (string)     : Specifies the recurrence end time (H:M:S).


variable "tags" {
  description = "A mapping of tags which should be assigned to the Alert Processing Rule."
  type        = map(any)
  default     = null
}
