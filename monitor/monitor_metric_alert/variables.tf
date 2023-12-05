# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the Metric Alert. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which to create the Metric Alert instance. Changing this forces a new resource to be created."
  type        = string

}
variable "scopes" {
  description = "(REQUIRED) A set of strings of resource IDs at which the metric criteria should be applied."
  type        = string

}

# OPTIONAL VARIABLES

variable "criteria" {
  description = "One or more (static) 'criteria' blocks."
  type        = map(map(any))
  default     = null
}
#
# criteria block structure     :
#   metric_namespace (string)    : (REQUIRED) One of the metric namespaces to be monitored.
#   metric_name (string)         : (REQUIRED) One of the metric names to be monitored.
#   aggregation (string)         : (REQUIRED) The statistic that runs over the metric values. Possible values are 'Average', 'Count', 'Minimum', 'Maximum' and 'Total'.
#   operator (string)            : (REQUIRED) The criteria operator. Possible values are 'Equals', 'GreaterThan', 'GreaterThanOrEqual', 'LessThan' and 'LessThanOrEqual'.
#   threshold (string)           : (REQUIRED) The criteria threshold value that activates the alert.
#   dimension (block)            : One or more 'dimension' blocks.
#   skip_metric_validation (bool): Skip the metric validation to allow creating an alert rule on a custom metric that isn't yet emitted? Defaults to 'false'.
#
# dimension block structure:
#   name (string)            : (REQUIRED) One of the dimension names.
#   operator (string)        : (REQUIRED) The dimension operator. Possible values are 'Include', 'Exclude' and 'StartsWith'.
#   values (string)          : (REQUIRED) The list of dimension values.


variable "dynamic_criteria" {
  description = "A 'dynamic_criteria' block."
  type        = map(any)
  default     = null
}
#
# dynamic_criteria block structure:
#   metric_namespace (string)       : (REQUIRED) One of the metric namespaces to be monitored.
#   metric_name (string)            : (REQUIRED) One of the metric names to be monitored.
#   aggregation (string)            : (REQUIRED) The statistic that runs over the metric values. Possible values are 'Average', 'Count', 'Minimum', 'Maximum' and 'Total'.
#   operator (string)               : (REQUIRED) The criteria operator. Possible values are 'LessThan', 'GreaterThan' and 'GreaterOrLessThan'.
#   alert_sensitivity (string)      : (REQUIRED) The extent of deviation required to trigger an alert. Possible values are 'Low', 'Medium' and 'High'.
#   dimension (block)               : One or more 'dimension' blocks.
#   evaluation_total_count (int)    : The number of aggregated lookback points. The lookback time window is calculated based on the aggregation granularity ('window_size') and the selected number of aggregated points. Defaults to '4'.
#   evaluation_failure_count (int)  : The number of violations to trigger an alert. Should be smaller or equal to 'evaluation_total_count'. Defaults to '4'.
#   ignore_data_before (string)     : The [ISO8601](https://en.wikipedia.org/wiki/ISO_8601) date from which to start learning the metric historical data and calculate the dynamic thresholds.
#   skip_metric_validation (string) : Skip the metric validation to allow creating an alert rule on a custom metric that isn't yet emitted?
#
# dimension block structure:
#   name (string)            : (REQUIRED) One of the dimension names.
#   operator (string)        : (REQUIRED) The dimension operator. Possible values are 'Include', 'Exclude' and 'StartsWith'.
#   values (string)          : (REQUIRED) The list of dimension values.


variable "application_insights_web_test_location_availability_criteria" {
  description = "A 'application_insights_web_test_location_availability_criteria' block."
  type        = map(any)
  default     = null
}
#
# application_insights_web_test_location_availability_criteria block structure:
#   web_test_id (string)                                                        : (REQUIRED) The ID of the Application Insights Web Test.
#   component_id (string)                                                       : (REQUIRED) The ID of the Application Insights Resource.
#   failed_location_count (int)                                                 : (REQUIRED) The number of failed locations.


variable "action" {
  description = "One or more 'action' blocks."
  type        = map(map(any))
  default     = null
}
#
# action block structure     :
#   action_group_id (string)   : (REQUIRED) The ID of the Action Group can be sourced from [the 'azurerm_monitor_action_group' resource](./monitor_action_group.html)
#   webhook_properties (string): The map of custom string properties to include with the post operation. These data are appended to the webhook payload.


variable "enabled" {
  description = "Should this Metric Alert be enabled? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "auto_mitigate" {
  description = "Should the alerts in this Metric Alert be auto resolved? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "description" {
  description = "The description of this Metric Alert."
  type        = string
  default     = null
}
variable "frequency" {
  description = "The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are 'PT1M', 'PT5M', 'PT15M', 'PT30M' and 'PT1H'. Defaults to 'PT1M'."
  type        = string
  default     = "PT1M"
}
variable "severity" {
  description = "The severity of this Metric Alert. Possible values are '0', '1', '2', '3' and '4'. Defaults to '3'."
  type        = string
  default     = "3"
}
variable "target_resource_type" {
  description = "The resource type (e.g. 'Microsoft.Compute/virtualMachines') of the target resource."
  type        = string
  default     = null
}
variable "target_resource_location" {
  description = "The location of the target resource."
  type        = string
  default     = null
}
variable "window_size" {
  description = "The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than 'frequency'. Possible values are 'PT1M', 'PT5M', 'PT15M', 'PT30M', 'PT1H', 'PT6H', 'PT12H' and 'P1D'. Defaults to 'PT5M'."
  type        = string
  default     = "PT5M"
}
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
