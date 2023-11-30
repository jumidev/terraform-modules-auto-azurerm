# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) The name of the AutoScale Setting. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the Resource Group in the AutoScale Setting should be created. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the AutoScale Setting should exist. Changing this forces a new resource to be created."
  type        = string

}
variable "profile" {
  description = "(REQUIRED) Specifies one or more (up to 20) 'profile' blocks."
  type        = map(map(any))
}
#
# profile block structure:
#   name (string)          : (REQUIRED) Specifies the name of the profile.
#   capacity (block)       : (REQUIRED) A 'capacity' block.
#   rule (block)           : One or more (up to 10) 'rule' blocks.
#   fixed_date (block)     : A 'fixed_date' block. This cannot be specified if a 'recurrence' block is specified.
#   recurrence (block)     : A 'recurrence' block. This cannot be specified if a 'fixed_date' block is specified.
#
# scale_action block structure:
#   cooldown (string)           : (REQUIRED) The amount of time to wait since the last scaling action before this action occurs. Must be between 1 minute and 1 week and formatted as a ISO 8601 string.
#   direction (string)          : (REQUIRED) The scale direction. Possible values are 'Increase' and 'Decrease'.
#   type (string)               : (REQUIRED) The type of action that should occur. Possible values are 'ChangeCount', 'ExactCount', 'PercentChangeCount' and 'ServiceAllowedNextValue'.
#   value (int)                 : (REQUIRED) The number of instances involved in the scaling action.
#
# dimensions block structure:
#   name (string)             : (REQUIRED) The name of the dimension.
#   operator (string)         : (REQUIRED) The dimension operator. Possible values are 'Equals' and 'NotEquals'. 'Equals' means being equal to any of the values. 'NotEquals' means being not equal to any of the values.
#   values (list)             : (REQUIRED) A list of dimension values.
#
# recurrence block structure:
#   timezone (string)         : The Time Zone used for the 'hours' field. A list of [possible values can be found here](https://msdn.microsoft.com/en-us/library/azure/dn931928.aspx). Defaults to 'UTC'.
#   days (string)             : (REQUIRED) A list of days that this profile takes effect on. Possible values include 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday' and 'Sunday'.
#   hours (string)            : (REQUIRED) A list containing a single item, which specifies the Hour interval at which this recurrence should be triggered (in 24-hour time). Possible values are from '0' to '23'.
#   minutes (int)             : (REQUIRED) A list containing a single item which specifies the Minute interval at which this recurrence should be triggered.
#
# capacity block structure:
#   default (string)        : (REQUIRED) The number of instances that are available for scaling if metrics are not available for evaluation. The default is only used if the current instance count is lower than the default. Valid values are between '0' and '1000'.
#   maximum (string)        : (REQUIRED) The maximum number of instances for this resource. Valid values are between '0' and '1000'.
#   minimum (string)        : (REQUIRED) The minimum number of instances for this resource. Valid values are between '0' and '1000'.
#
# rule block structure  :
#   metric_trigger (block): (REQUIRED) A 'metric_trigger' block.
#   scale_action (block)  : (REQUIRED) A 'scale_action' block.
#
# metric_trigger block structure:
#   metric_name (string)          : (REQUIRED) The name of the metric that defines what the rule monitors, such as 'Percentage CPU' for 'Virtual Machine Scale Sets' and 'CpuPercentage' for 'App Service Plan'.
#   metric_resource_id (string)   : (REQUIRED) The ID of the Resource which the Rule monitors.
#   operator (string)             : (REQUIRED) Specifies the operator used to compare the metric data and threshold. Possible values are: 'Equals', 'NotEquals', 'GreaterThan', 'GreaterThanOrEqual', 'LessThan', 'LessThanOrEqual'.
#   statistic (string)            : (REQUIRED) Specifies how the metrics from multiple instances are combined. Possible values are 'Average', 'Max', 'Min' and 'Sum'.
#   time_aggregation (string)     : (REQUIRED) Specifies how the data that's collected should be combined over time. Possible values include 'Average', 'Count', 'Maximum', 'Minimum', 'Last' and 'Total'.
#   time_grain (string)           : (REQUIRED) Specifies the granularity of metrics that the rule monitors, which must be one of the pre-defined values returned from the metric definitions for the metric. This value must be between 1 minute and 12 hours an be formatted as an ISO 8601 string.
#   time_window (string)          : (REQUIRED) Specifies the time range for which data is collected, which must be greater than the delay in metric collection (which varies from resource to resource). This value must be between 5 minutes and 12 hours and be formatted as an ISO 8601 string.
#   threshold (string)            : (REQUIRED) Specifies the threshold of the metric that triggers the scale action.
#   metric_namespace (string)     : The namespace of the metric that defines what the rule monitors, such as 'microsoft.compute/virtualmachinescalesets' for 'Virtual Machine Scale Sets'.
#   dimensions (block)            : One or more 'dimensions' block.
#   divide_by_instance_count (int): Whether to enable metric divide by instance count.
#
# fixed_date block structure:
#   end (string)              : (REQUIRED) Specifies the end date for the profile, formatted as an RFC3339 date string.
#   start (string)            : (REQUIRED) Specifies the start date for the profile, formatted as an RFC3339 date string.
#   timezone (string)         : The Time Zone of the 'start' and 'end' times. A list of [possible values can be found here](https://msdn.microsoft.com/en-us/library/azure/dn931928.aspx). Defaults to 'UTC'.


variable "target_resource_id" {
  description = "(REQUIRED) Specifies the resource ID of the resource that the autoscale setting should be added to. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "enabled" {
  description = "Specifies whether automatic scaling is enabled for the target resource. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "notification" {
  description = "Specifies a 'notification' block."
  type        = map(any)
  default     = null
}
#
# notification block structure:
#   email (block)               : A 'email' block.
#   webhook (block)             : One or more 'webhook' blocks.
#
# webhook block structure:
#   service_uri (string)   : (REQUIRED) The HTTPS URI which should receive scale notifications.
#   properties (string)    : A map of settings.
#
# email block structure                       :
#   send_to_subscription_administrator (bool)   : Should email notifications be sent to the subscription administrator? Defaults to 'false'.
#   send_to_subscription_co_administrator (bool): Should email notifications be sent to the subscription co-administrator? Defaults to 'false'.
#   custom_emails (string)                      : Specifies a list of custom email addresses to which the email notifications will be sent.


variable "predictive" {
  description = "A 'predictive' block."
  type        = map(any)
  default     = null
}
#
# predictive block structure:
#   scale_mode (string)       : (REQUIRED) Specifies the predictive scale mode. Possible values are 'Enabled' or 'ForecastOnly'.
#   look_ahead_time (string)  : Specifies the amount of time by which instances are launched in advance. It must be between 'PT1M' and 'PT1H' in ISO 8601 format.


variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(any)
  default     = null
}
