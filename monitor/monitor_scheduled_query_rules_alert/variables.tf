# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the scheduled query rule. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the scheduled query rule instance. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the Azure Region where the resource should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "data_source_id" {
  description = "(REQUIRED) The resource URI over which log search query is to be run."
  type        = string

}
variable "frequency" {
  description = "(REQUIRED) Frequency (in minutes) at which rule condition should be evaluated. Values must be between 5 and 1440 (inclusive)."
  type        = number

}
variable "query" {
  description = "(REQUIRED) Log search query."
  type        = string

}
variable "time_window" {
  description = "(REQUIRED) Time window for which data needs to be fetched for query (must be greater than or equal to 'frequency'). Values must be between 5 and 2880 (inclusive)."
  type        = number

}
variable "trigger" {
  description = "(REQUIRED) A 'trigger' block."
  type        = map(any)
}
#
# trigger block structure:
#   metric_trigger (block) : A 'metric_trigger' block. Trigger condition for metric query rule.
#   operator (string)      : (REQUIRED) Evaluation operation for rule - 'GreaterThan', GreaterThanOrEqual', 'LessThan', or 'LessThanOrEqual'.
#   threshold (number)     : (REQUIRED) Result or count threshold based on which rule should be triggered. Values must be between 0 and 10000 inclusive.
#
# metric_trigger block structure:
#   metric_trigger_type (string)  : (REQUIRED) Metric Trigger Type - 'Consecutive' or 'Total'.
#   operator (string)             : (REQUIRED) Evaluation operation for rule - 'Equal', 'GreaterThan', GreaterThanOrEqual', 'LessThan', or 'LessThanOrEqual'.
#   threshold (number)            : (REQUIRED) The threshold of the metric trigger. Values must be between 0 and 10000 inclusive.
#   metric_column (string)        : Evaluation of metric on a particular column.


variable "action" {
  description = "(REQUIRED) An 'action' block."
  type        = map(any)
}
#
# action block structure         :
#   action_group (string)          : (REQUIRED) List of action group reference resource IDs.
#   custom_webhook_payload (string): Custom payload to be sent for all webhook payloads in alerting action.
#   email_subject (string)         : Custom subject override for all email ids in Azure action group.



# OPTIONAL VARIABLES

variable "authorized_resource_ids" {
  description = "List of Resource IDs referred into query."
  type        = string
  default     = null
}
variable "auto_mitigation_enabled" {
  description = "Should the alerts in this Metric Alert be auto resolved? Defaults to 'false'. -> **NOTE** 'auto_mitigation_enabled' and 'throttling' are mutually exclusive and cannot both be set."
  type        = bool
  default     = false
}
variable "description" {
  description = "The description of the scheduled query rule."
  type        = string
  default     = null
}
variable "enabled" {
  description = "Whether this scheduled query rule is enabled. Default is 'true'."
  type        = bool
  default     = true
}
variable "query_type" {
  description = "The type of query results. Possible values are 'ResultCount' and 'Number'. Default is 'ResultCount'. If set to 'ResultCount', 'query' must include an 'AggregatedValue' column of a numeric type, for example, 'Heartbeat | summarize AggregatedValue = count() by bin(TimeGenerated, 5m)'."
  type        = string
  default     = "ResultCount"
}
variable "severity" {
  description = "Severity of the alert. Possible values include: 0, 1, 2, 3, or 4."
  type        = string
  default     = null
}
variable "throttling" {
  description = "Time (in minutes) for which Alerts should be throttled or suppressed. Values must be between 0 and 10000 (inclusive)."
  type        = number
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
